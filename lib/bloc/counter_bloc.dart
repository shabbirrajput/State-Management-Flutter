import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_event.dart';

part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial()) {
    on<IncrementEvent>(_onIncrement);
    on<DecrementEvent>(_onDecrement);
  }

  int count = 0;

  void _onIncrement(
    IncrementEvent event,
    Emitter<CounterState> emit,
  ) async {
    emit(CounterLoading());
    ///await Future.delayed(const Duration(seconds: 1));
    count++;
    emit(CounterResponse(count: count));
  }

  void _onDecrement(
    DecrementEvent event,
    Emitter<CounterState> emit,
  ) async {
    emit(CounterLoading());
    ///await Future.delayed(const Duration(seconds: 1));
    if (count == 0) {
      emit(const CounterFailure(mError: "The Counter is 0"));
    }else{
      count--;
      emit(CounterResponse(count: count));
    }

  }
}
