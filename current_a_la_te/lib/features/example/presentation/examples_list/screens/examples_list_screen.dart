import 'package:current_a_la_te/core/di/service_locator.dart';
import 'package:current_a_la_te/core/utils/snackbar.dart';
import 'package:current_a_la_te/features/example/application/cubit/examples_list_cubit.dart';
import 'package:current_a_la_te/features/example/application/cubit/examples_list_state.dart';
import 'package:current_a_la_te/features/example/domain/repositories/example_repository.dart';
import 'package:current_a_la_te/features/example/presentation/examples_list/widgets/examples_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExamplesListScreen extends StatelessWidget {
  const ExamplesListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => ExamplesListCubit(
            exampleRepository: locator<ExampleRepository>(),
          )..getExamples(),
        ),
      ],
      child: const _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ExamplesListCubit, ExamplesListState>(
      listenWhen: (context, state) {
        return state.status.isFailure;
      },
      listener: (context, state) {
        if (state.status.isFailure) {
          context.showSnackBar(
            message: state.errorMessage,
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Ejemplos'),
          ),
          body: _buildBody(context, state),
        );
      },
    );
  }

  Widget _buildBody(BuildContext context, ExamplesListState state) {
    if (state.status.isInitial || state.status.isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    } else if (state.status.isSuccess) {
      if (state.examples.isEmpty) {
        return const Center(
          child: Text('No se han encontrado ejemplos.'),
        );
      } else {
        return ExamplesList(examples: state.examples);
      }
    } else {
      return const SizedBox.shrink();
    }
  }
}
