part of 'counter_bloc.dart';

abstract class CounterEvent extends Equatable {
  const CounterEvent();
}

/// [IncrementEvent] abstract class is used Increment Event
class IncrementEvent extends CounterEvent {
  const IncrementEvent();
  @override
  List<Object> get props => [];
}

/// [DecrementEvent] abstract class is used Decrement Event
class DecrementEvent extends CounterEvent {
  const DecrementEvent();
  @override
  List<Object> get props => [];
}
