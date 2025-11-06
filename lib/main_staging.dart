import 'package:current_a_la_te/app/app.dart';
import 'package:current_a_la_te/bootstrap.dart';
import 'package:current_a_la_te/core/di/service_locator.dart';
import 'package:current_a_la_te/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await setupServiceLocator();
  await bootstrap(() => const App());
}
