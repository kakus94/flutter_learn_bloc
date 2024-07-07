import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_learn_bloc/Cubit/counter/counter_event.dart';
import 'package:flutter_learn_bloc/Cubit/counter/counter_state.dart';

class CounterCubit extends Bloc<CounterEvent, CounterState> {
  CounterCubit() : super(CounterInistail()) {
    on<CounterIncreement>(
        (event, emit) => emit(CounterPlus(state.counterValue + 1)));
    on<CounterDecrement>(
        (event, emit) => emit(CounterMinus(state.counterValue - 1)));
  }
}
