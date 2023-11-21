part of 'screen_size_bloc.dart';

@immutable
sealed class ScreenSizeState {}

final class ScreenSizeInitial extends ScreenSizeState {}

final class MobileScreen extends ScreenSizeState{}

final class DesktopScreen extends ScreenSizeState{}