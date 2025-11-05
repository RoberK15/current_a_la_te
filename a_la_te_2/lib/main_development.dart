import 'package:a_la_te_2/app/app.dart';
import 'package:a_la_te_2/bootstrap.dart';
import 'package:a_la_te_2/core/di/service_locator.dart';

Future<void> main() async {
  await setupServiceLocator();
  await bootstrap(() => const App());
}
