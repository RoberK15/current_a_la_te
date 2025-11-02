import 'package:a_la_te_2/app/app.dart';
import 'package:a_la_te_2/bootstrap.dart';

Future<void> main() async {
  await bootstrap(() => const App());
}
