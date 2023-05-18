part of 'counter_bloc.dart';

abstract class CounterState extends Equatable {
  const CounterState();
}

class CounterInitial extends CounterState {
  @override
  List<Object> get props => [];
}


/// [CounterLoading] class is used Counter State Loading
class CounterLoading extends CounterState {
  @override
  List<Object> get props => [];
}

/// [CounterResponse] class is used Counter State Response
class CounterResponse extends CounterState {
  final int count;

  const CounterResponse({required this.count});

  @override
  List<Object> get props => [count];
}

/// [CounterFailure] class is used Counter State Failure
class CounterFailure extends CounterState {
  final String mError;

  const CounterFailure({required this.mError});

  @override
  List<Object> get props => [mError];
}
