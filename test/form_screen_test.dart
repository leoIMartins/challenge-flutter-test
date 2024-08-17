import 'package:flutter/material.dart';
import 'package:flutter_app_form/screen/form_screen.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('FormScreen has a text field and button, and navigates on button press', (WidgetTester tester) async {
    const testValue = "Test Value";

    // Renders the UI
    await tester.pumpWidget(MaterialApp(home: FormScreen()));

    // Find textField and button
    final textFieldFinder = find.byKey(const Key('textField'));
    final buttonFinder = find.byKey(const Key('button'));

    // Verify that the elements are displayed on FormScreen widget
    expect(textFieldFinder, findsOneWidget);
    expect(buttonFinder, findsOneWidget);

    // Interact with elements
    await tester.enterText(textFieldFinder, testValue);
    await tester.tap(buttonFinder);
    
    // Wait for all animations to complete
    await tester.pumpAndSettle();
    
    // Verify that NextPage has the text passed from FormScreen
    expect(find.text(testValue), findsOneWidget);
  });
}
