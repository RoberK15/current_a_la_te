// Ignore for testing purposes

import 'package:bloc_test/bloc_test.dart';
import 'package:current_a_la_te/features/counter/application/cubit/counter_state.dart';
import 'package:current_a_la_te/features/counter/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../helpers/helpers.dart';

class MockCounterCubit extends MockCubit<CounterState> implements CounterCubit {}

void main() {
  group('CounterScreen', () {
    testWidgets('renders CounterView', (tester) async {
      await tester.pumpApp(
        BlocProvider<CounterCubit>(
          create: (_) => CounterCubit(),
          child: const CounterScreen(),
        ),
      );
      expect(find.byType(CounterView), findsOneWidget);
    });
  });

  group('CounterView', () {
    late CounterCubit counterCubit;

    setUp(() {
      counterCubit = MockCounterCubit();
    });

    testWidgets('renders current count', (tester) async {
      const state = CounterState(counterValue: 42);
      when(() => counterCubit.state).thenReturn(state);
      await tester.pumpApp(
        BlocProvider.value(value: counterCubit, child: const CounterView()),
      );
      expect(find.text('${state.counterValue}'), findsOneWidget);
    });

    testWidgets('calls increment when increment button is tapped', (
      tester,
    ) async {
      when(() => counterCubit.state).thenReturn(const CounterState());
      when(() => counterCubit.increment()).thenReturn(null);
      await tester.pumpApp(
        BlocProvider.value(value: counterCubit, child: const CounterView()),
      );
      await tester.tap(find.byIcon(Icons.add));
      verify(() => counterCubit.increment()).called(1);
    });

    testWidgets('calls decrement when decrement button is tapped', (
      tester,
    ) async {
      when(() => counterCubit.state).thenReturn(const CounterState());
      when(() => counterCubit.decrement()).thenReturn(null);
      await tester.pumpApp(
        BlocProvider.value(value: counterCubit, child: const CounterView()),
      );
      await tester.tap(find.byIcon(Icons.remove));
      verify(() => counterCubit.decrement()).called(1);
    });
  });
}
