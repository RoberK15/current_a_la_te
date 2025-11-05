import 'package:a_la_te_2/features/counter/application/cubit/counter_state.dart';
import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(const CounterState());

  void increment() => emit(
    state.copyWith(counterValue: state.counterValue + 1)
  );
  void decrement() => emit(
    state.copyWith(counterValue: state.counterValue - 1)
  );
}
