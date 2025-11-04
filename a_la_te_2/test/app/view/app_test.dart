// Ignore for testing purposes
// ignore_for_file: prefer_const_constructors

import 'package:a_la_te_2/app/app.dart';
import 'package:a_la_te_2/features/counter/counter.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('App', () {
    testWidgets('renders CounterScreen', (tester) async {
      await tester.pumpWidget(App());
      expect(find.byType(CounterScreen), findsOneWidget);
    });
  });
}
