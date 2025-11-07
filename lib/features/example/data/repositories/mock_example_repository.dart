import 'package:current_a_la_te/features/example/domain/models/example.dart';
import 'package:current_a_la_te/features/example/domain/repositories/example_repository.dart';
import 'package:multiple_result/multiple_result.dart';

class MockExampleRepository implements ExampleRepository {
  @override
  Future<Result<List<Example>, Exception>> getExamples() async {
    try {
      // Simulate network delay
      await Future<void>.delayed(const Duration(seconds: 1));

      // Return mock data
      return Success(
        List<Example>.generate(
          10,
          (index) => Example(
            id: index.toString(),
            title: 'Ejemplo número ${index + 1}',
            description:
                'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...',
          ),
        ),
      );
    } catch (e) {
      return Error(Exception('Failed to fetch mock examples: $e'));
    }
  }
}
