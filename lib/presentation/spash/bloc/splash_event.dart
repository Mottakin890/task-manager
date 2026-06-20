import 'package:equatable/equatable.dart';

sealed class SplashEvent extends Equatable {}

final class AppStarted extends SplashEvent {
  @override
  List<Object?> get props => [];
}
