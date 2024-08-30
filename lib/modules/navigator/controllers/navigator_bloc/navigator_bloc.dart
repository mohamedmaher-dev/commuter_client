import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'navigator_event.dart';
part 'navigator_state.dart';
part 'navigator_bloc.freezed.dart';

class NavigatorBloc extends Bloc<NavigatorEvent, NavigatorState> {
  NavigatorBloc() : super(_Initial()) {
    on<NavigatorEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
