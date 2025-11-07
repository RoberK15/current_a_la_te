// Ignore for testing purposes
// ignore_for_file: prefer_const_constructors

import 'package:current_a_la_te/app/app.dart';
import 'package:current_a_la_te/features/example/presentation/examples_list/screens/examples_list_screen.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('App', () {
    testWidgets('renders ExamplesListScreen', (tester) async {
      await tester.pumpWidget(App());
      expect(find.byType(ExamplesListScreen), findsOneWidget);
    });
  });
}
