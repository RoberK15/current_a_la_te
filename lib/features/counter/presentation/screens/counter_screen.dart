import 'package:current_a_la_te/features/counter/application/cubit/counter_state.dart';
import 'package:current_a_la_te/features/counter/counter.dart';
import 'package:current_a_la_te/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    /*return BlocProvider(
      create: (_) => CounterCubit(),
      child: const CounterView(),
    );*/
    return const CounterView();
  }
}

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return BlocBuilder<CounterCubit, CounterState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(title: Text(l10n.counterAppBarTitle)),
          body: Center(child: CounterText(counterValue: state.counterValue)),
          floatingActionButton: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              FloatingActionButton(
                onPressed: () {
                  context.read<CounterCubit>().increment();
                },
                child: const Icon(Icons.add),
              ),
              const SizedBox(height: 8),
              FloatingActionButton(
                onPressed: () => context.read<CounterCubit>().decrement(),
                child: const Icon(Icons.remove),
              ),
            ],
          ),
        );
      },
    );
  }
}

class CounterText extends StatelessWidget {
  const CounterText({required this.counterValue, super.key});

  final int counterValue;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Text('$counterValue', style: theme.textTheme.displayLarge);
  }
}
