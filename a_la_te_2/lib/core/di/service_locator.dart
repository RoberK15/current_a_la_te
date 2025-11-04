import 'package:a_la_te_2/core/network/dio_client.dart';
import 'package:a_la_te_2/core/network/network_service.dart';
import 'package:a_la_te_2/features/example/data/repositories/api_example_repository.dart';
import 'package:a_la_te_2/features/example/data/repositories/mock_example_repository.dart';
import 'package:a_la_te_2/features/example/domain/repositories/example_repository.dart';
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
