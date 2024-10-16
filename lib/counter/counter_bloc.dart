import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_example/counter/counter_state.dart';

import 'counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitialState(count: 0)) {
    on<CounterIncrementEvent>((event, emit) => {
          emit(
              (CounterDecrementState(decrementCount: event.incrementCount + 1)))
        });

    on<CounterDecrementEvent>((event, emit) => {
          emit(
              (CounterDecrementState(decrementCount: event.decrementCount - 1)))
        });
  }
}
