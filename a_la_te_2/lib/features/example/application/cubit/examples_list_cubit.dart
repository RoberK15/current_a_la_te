import 'package:a_la_te_2/core/constants/enums/state_status.dart';
import 'package:a_la_te_2/features/example/application/cubit/examples_list_state.dart';
import 'package:a_la_te_2/features/example/domain/repositories/example_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExamplesListCubit extends Cubit<ExamplesListState> {
  ExamplesListCubit({required ExampleRepository exampleRepository})
      : _exampleRepository = exampleRepository,
        super(const ExamplesListState());

  final ExampleRepository _exampleRepository;

  Future<void> getExamples() async {
    emit(state.copyWith(status: StateStatus.loading));

    final result = await _exampleRepository.getExamples();

    result.when(
      (success) => emit(
        state.copyWith(
            status: StateStatus.success,
            examples: success,
        ),
      ),
      (error) => emit(
        state.copyWith(
            status: StateStatus.failure,
            errorMessage: error.toString(),
        ),
      ),
    );
  }
}
