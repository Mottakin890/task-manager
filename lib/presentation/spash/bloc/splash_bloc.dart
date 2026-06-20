import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_manager/presentation/spash/bloc/splash_event.dart';
import 'package:task_manager/presentation/spash/bloc/splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(const SplashState()) {
    on<AppStarted>((event, emit) async {
      emit(state.copyWith(status: SplashStatus.loading));
      await Future.delayed(const Duration(seconds: 3));
      emit(state.copyWith(status: SplashStatus.loaded));
    });
  }
}

