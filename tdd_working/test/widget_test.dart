import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'my_widget_test/my_app_widget.dart';

void main() {
  testWidgets('Widget my app test', (WidgetTester tester) async {
    await tester.pumpWidget(MyAppWidget(title: "AppTest", message: "Welcome"));
    final titleFinder = find.text("AppTest");
    final messageFinder = find.text("Welcome");

    expect(titleFinder, findsOneWidget);
    expect(messageFinder, findsOneWidget);
  });
}
