import 'package:flutter_test/flutter_test.dart';

import 'package:foodtruckz/main.dart';

void main() {
  testWidgets('renders the app title', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Flutter Foodtruckz'), findsOneWidget);
  });
}
