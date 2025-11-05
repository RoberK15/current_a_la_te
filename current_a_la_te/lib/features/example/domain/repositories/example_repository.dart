import 'package:current_a_la_te/features/example/domain/models/example.dart';
import 'package:multiple_result/multiple_result.dart';

// This is a repository interface for fetching Example data. Its implementations
// will provide the actual data retrieval logic, such as from an API or a mock
// source.
// ignore: one_member_abstracts
abstract class ExampleRepository {
  Future<Result<List<Example>, Exception>> getExamples();
}
