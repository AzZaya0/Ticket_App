part of 'screen_size_bloc.dart';

@immutable
sealed class ScreenSizeEvent {}

final class MobileScreenEvent extends ScreenSizeEvent{}

final class DesktopScreenEvent extends ScreenSizeEvent{}

