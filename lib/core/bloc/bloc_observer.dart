import 'package:bloc/bloc.dart';
import 'package:commuter_client/core/bloc/main_bloc.dart';
import 'package:commuter_client/modules/auth/sign_in/controllers/sign_in_bloc/sign_in_bloc.dart';
import 'package:debug_print_flutter/debug_print_flutter.dart';

class MyBlocObserver extends BlocObserver {
  final MainBloc mainBloc;
  final DebugPrint dPrint;
  MyBlocObserver({required this.dPrint, required this.mainBloc});
  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    if (bloc is SignInBloc) mainBloc.signInBloc = bloc;
    dPrint.white('onCreate -- ${bloc.runtimeType}');
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    dPrint.white('onEvent -- ${bloc.runtimeType}, $event');
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    dPrint.white('onChange -- ${bloc.runtimeType}, $change');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    dPrint.white('onTransition -- ${bloc.runtimeType}, $transition');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    dPrint.error('onError -- ${bloc.runtimeType}, $error');
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    dPrint.warning('onClose -- ${bloc.runtimeType}');
  }
}
