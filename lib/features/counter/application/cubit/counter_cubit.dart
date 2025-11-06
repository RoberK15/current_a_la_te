import 'package:bloc/bloc.dart';
import 'package:current_a_la_te/features/counter/application/cubit/counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(const CounterState());

  void increment() => emit(
    state.copyWith(counterValue: state.counterValue + 1)
  );
  void decrement() => emit(
    state.copyWith(counterValue: state.counterValue - 1)
  );
}
