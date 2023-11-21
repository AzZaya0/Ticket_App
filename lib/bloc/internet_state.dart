part of 'internet_bloc.dart';

@immutable
sealed class InternetState {}

final class InternetInitial extends InternetState {}

final class InternetAccess extends InternetState {}

final class InternetDown extends InternetState {}
