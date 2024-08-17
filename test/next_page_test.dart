import 'package:flutter/material.dart';
import 'package:flutter_app_form/screen/form_screen.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('NextPage displays the value passed from FormScreen', (WidgetTester tester) async {
    const testValue = "Test Value";
    
    // Renders the UI
    await tester.pumpWidget(const MaterialApp(home: NextPage(value: testValue)));

    // Verify that the text is displayed on NextPage widget
    expect(find.text(testValue), findsOneWidget);
  });
}
