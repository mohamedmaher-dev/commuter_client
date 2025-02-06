import 'package:bloc/bloc.dart';
import 'package:commuter_client/core/bloc/main_bloc.dart';
import 'package:commuter_client/modules/auth/controllers/sign_in_bloc/sign_in_bloc.dart';
import 'package:logger/logger.dart';

class MyBlocObserver extends BlocObserver {
  final MainBloc mainBloc;
  final logger = Logger();

  MyBlocObserver({required this.mainBloc});
  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    if (bloc is SignInBloc) mainBloc.signInBloc = bloc;
    logger.i(
      'onEvent -- ${bloc.runtimeType}',
      stackTrace: StackTrace.empty,
    );
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    logger.f(
      event,
      error: 'onEvent -- ${bloc.runtimeType}',
      stackTrace: StackTrace.empty,
    );
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    logger.f(
      change,
      error: 'onChange -- ${bloc.runtimeType}',
      stackTrace: StackTrace.empty,
    );
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    logger.f(
      transition,
      error: 'onTransition -- ${bloc.runtimeType}',
      stackTrace: StackTrace.empty,
    );
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    logger.e(
      error,
      error: 'onError -- ${bloc.runtimeType}',
      stackTrace: stackTrace,
    );
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    logger.t(
      'onClose -- ${bloc.runtimeType}',
      stackTrace: StackTrace.empty,
    );
  }
}
