import 'package:a_la_te_2/features/counter/application/cubit/counter_state.dart';
import 'package:a_la_te_2/features/counter/counter.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CounterCubit', () {
    test('initial state is 0', () {
      expect(CounterCubit().state.counterValue, 0);
    });

    blocTest<CounterCubit, CounterState>(
      'emits a CounterState with counterValue incremented by 1 when increment is called',
      build: () {
        return CounterCubit();
      },
      act: (cubit) => cubit.increment(),
      expect: () => [const CounterState(counterValue: 1)],
    );

    blocTest<CounterCubit, CounterState>(
      'emits a CounterState with counterValue decremented by 1 when decrement is called',
      build: () {
        return CounterCubit();
      },
      act: (cubit) => cubit.decrement(),
      expect: () => [const CounterState(counterValue: -1)],
    );
  });
}
