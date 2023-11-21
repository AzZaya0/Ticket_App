part of 'internet_bloc.dart';

@immutable
sealed class InternetEvent {}

final class InternetLossEvent extends InternetEvent{}
final class InternetGainEvent extends InternetEvent{}
