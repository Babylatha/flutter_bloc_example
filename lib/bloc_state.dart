part of 'counter_bloc.dart';

abstract class CounterState {}

class CounterInitial extends CounterState {}

class CounterIncrement extends CounterState {}

class CounterdDecrement extends CounterState {}
