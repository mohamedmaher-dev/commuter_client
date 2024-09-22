import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:commuter_client/core/extensions/time_of_day_ext.dart';
import 'package:commuter_client/modules/nearby_commuters/data/nearby_commuters_filter.dart';
import 'package:commuter_client/modules/nearby_commuters/data/rebos/nearby_commuters_rebo.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../data/models/nearby_commuters_response_model.dart';
import '../nearby_commuters_tabs/nearby_commuters_tabs_cubit.dart';

part 'nearby_commuters_event.dart';
part 'nearby_commuters_state.dart';
part 'nearby_commuters_bloc.freezed.dart';

class NearbyCommutersBloc
    extends Bloc<NearbyCommutersEvent, NearbyCommutersState> {
  NearbyCommutersFilter filter = BestMatchNearbyCommuters();
  NearbyCommutersTabs tab = NearbyCommutersTabs.all;
  late List<NearbyCommutersModel> commuters;
  final NearbyCommutersRebo _rebo;
  NearbyCommutersBloc(this._rebo) : super(const _Initial()) {
    on<NearbyCommutersEvent>(
      (event, emit) async {
        await event.when(
          started: () async {
            emit(const NearbyCommutersState.loading());
            final result = await _rebo.getNearbyCommuters();
            await result.when(
              success: (response) async {
                commuters = response.commuters;
                commuters = _setCommuteSatus(commuters);
                commuters = _setTimeLeft(commuters);
                commuters = await _setLocationName(commuters, _rebo);
                commuters = await _setMatch(commuters, _rebo);
                emitState(emit, filter.filter(commuters, tab));
              },
              failure: (error) {
                emit(NearbyCommutersState.failure(error.msg));
              },
            );
          },
          changeTab: (tab) {
            this.tab = tab;
            emitState(emit, filter.filter(commuters, tab));
          },
          changeFilter: (type) {
            filter = filter.changeFilter(type);
            emitState(emit, filter.filter(commuters, tab));
          },
        );
      },
    );
  }
  void emitState(Emitter<NearbyCommutersState> emitter,
      List<NearbyCommutersModel> commuters) {
    if (commuters.isEmpty) {
      emitter(const NearbyCommutersState.empty());
    } else {
      emitter(NearbyCommutersState.success(commuters));
    }
  }

  List<NearbyCommutersModel> _setCommuteSatus(
      List<NearbyCommutersModel> commuters) {
    for (var commuter in commuters) {
      final startTime = TimeOfDay.fromDateTime(
        commuter.commute.landingTimeWindow.start,
      );
      final endTime = TimeOfDay.fromDateTime(
        commuter.commute.landingTimeWindow.end,
      );
      final upcomingTime = TimeOfDay.fromDateTime(
        commuter.commute.landingTimeWindow.start.subtract(
          const Duration(
            minutes: 60,
          ),
        ),
      );
      final now = TimeOfDay.now();
      if (now.isBetween(startTime, endTime)) {
        commuter.commute.status = CommuteStatus.online;
      } else {
        if (now.isBetween(upcomingTime, startTime)) {
          commuter.commute.status = CommuteStatus.upcoming;
        } else {
          commuter.commute.status = CommuteStatus.offline;
        }
      }
    }
    return commuters;
  }

  List<NearbyCommutersModel> _setTimeLeft(
      List<NearbyCommutersModel> commuters) {
    for (var commuter in commuters) {
      commuter.commute.timeLeft = TimeOfDay.now().clockwiseMinutesBetween(
        TimeOfDay.fromDateTime(
          commuter.commute.landingTimeWindow.start,
        ),
      );
    }
    return commuters;
  }

  Future<List<NearbyCommutersModel>> _setLocationName(
      List<NearbyCommutersModel> commuters, NearbyCommutersRebo rebo) async {
    for (var commuter in commuters) {
      final pickupLocation = LatLng(commuter.commute.pickupLocation.latitude,
          commuter.commute.pickupLocation.longitude);
      final dropOffLocation = LatLng(commuter.commute.landingLocation.latitude,
          commuter.commute.landingLocation.longitude);
      final pickupLocationName = await rebo.getLocationName(pickupLocation);
      final dropOffLocationName = await rebo.getLocationName(dropOffLocation);
      commuter.commute.pickupLocationName = pickupLocationName;
      commuter.commute.dropoffLocationName = dropOffLocationName;
    }
    return commuters;
  }

  Future<List<NearbyCommutersModel>> _setMatch(
      List<NearbyCommutersModel> commuters, NearbyCommutersRebo rebo) async {
    final loaclCommutes = await rebo.getLocalCommutes();
    for (var commuter in commuters) {
      for (var localCommute in loaclCommutes) {
        final distance = _calculateDistance(
          commuter.commute.landingLocation.latitude,
          commuter.commute.landingLocation.longitude,
          localCommute.latitude,
          localCommute.longitude,
        );
        if (distance <= 5) {
          commuter.commute.commuteMatch = localCommute;
          break;
        }
      }
    }
    return commuters;
  }

  double _calculateDistance(lat1, lon1, lat2, lon2) {
    var p =
        0.017453292519943295; //conversion factor from radians to decimal degrees, exactly math.pi/180
    var c = cos;
    var a = 0.5 -
        c((lat2 - lat1) * p) / 2 +
        c(lat1 * p) * c(lat2 * p) * (1 - c((lon2 - lon1) * p)) / 2;
    var radiusOfEarth = 6371;
    return radiusOfEarth * 2 * asin(sqrt(a));
  }
}
