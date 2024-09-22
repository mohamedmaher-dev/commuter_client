import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'nearby_commuters_tabs_state.dart';
part 'nearby_commuters_tabs_cubit.freezed.dart';

class NearbyCommutersTabsCubit extends Cubit<NearbyCommutersTabsState> {
  NearbyCommutersTabsCubit() : super(const NearbyCommutersTabsState.initial());

  void changeTab(NearbyCommutersTabs tab) {
    emit(NearbyCommutersTabsState.success(tab));
  }
}

enum NearbyCommutersTabs { all, online, upcoming, offline }
