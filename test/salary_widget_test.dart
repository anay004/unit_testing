import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:unit_testing/home_page.dart';

void main()
{
  testWidgets("Widget Test", (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: HomePage(),));
    await tester.enterText(find.byKey(Key("hour_input")), "10");
    await tester.tap(find.byKey(Key("calculate_button")));
    await tester.pumpAndSettle();

    expect(find.text("5000"), findsOneWidget);
  });
}