import 'package:a_la_te_2/core/constants/enums/state_status.dart';
import 'package:a_la_te_2/features/example/domain/models/example.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'examples_list_state.freezed.dart';

@freezed
abstract class ExamplesListState with _$ExamplesListState {
  const factory ExamplesListState({
    @Default(StateStatus.initial) StateStatus status,
    @Default([]) List<Example> examples,
    @Default('') String errorMessage,
  }) = _ExamplesListState;
}