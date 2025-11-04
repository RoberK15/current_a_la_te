import 'package:a_la_te_2/core/network/endpoints.dart';
import 'package:a_la_te_2/core/network/network_service.dart';
import 'package:a_la_te_2/features/example/domain/models/example.dart';
import 'package:a_la_te_2/features/example/domain/repositories/example_repository.dart';
import 'package:multiple_result/multiple_result.dart';

class ApiExampleRepository implements ExampleRepository {
  ApiExampleRepository({required this.networkService});
  final NetworkService networkService;

  @override
  Future<Result<List<Example>, Exception>> getExamples() async {
    try {
      final examples = 
        await networkService.get<List<dynamic>>(Endpoints.examples);

      final result = <Example>[];

      for (final element in examples.data as List) {
        result.add(Example.fromJson(element as Map<String, Object?>));
      }

      return Success(result);
    } catch (e) {
      return Error(Exception('Failed to fetch examples: $e'));
    }
  }
}
