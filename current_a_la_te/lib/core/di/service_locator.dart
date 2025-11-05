import 'package:current_a_la_te/core/network/dio_client.dart';
import 'package:current_a_la_te/core/network/network_service.dart';
import 'package:current_a_la_te/features/example/data/repositories/api_example_repository.dart';
import 'package:current_a_la_te/features/example/data/repositories/mock_example_repository.dart';
import 'package:current_a_la_te/features/example/domain/repositories/example_repository.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final GetIt locator = GetIt.instance;
const useMocks = true;

Future<void> setupServiceLocator() async{
  locator
    ..registerLazySingleton(Dio.new)
    ..registerLazySingleton<NetworkService>(
      () => DioClient(locator<Dio>()
      ),
    )
    ..registerLazySingleton<ExampleRepository>(
      () => useMocks ? MockExampleRepository() : ApiExampleRepository(
        networkService: locator<NetworkService>(),
      ),
    );
}
