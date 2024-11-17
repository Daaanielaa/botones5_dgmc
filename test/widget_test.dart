import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:botones5/main.dart'; 
void main() {
  testWidgets('Test de botones', (WidgetTester tester) async {
    
    await tester.pumpWidget(MyApp());

   
    expect(find.text('Primary'), findsOneWidget);
    expect(find.text('Secondary'), findsOneWidget);
    expect(find.text('Success'), findsOneWidget);
    expect(find.text('Danger'), findsOneWidget);
    expect(find.text('Warning'), findsOneWidget);

    
    expect(find.text('Pie de página - Hecho desde Cero'), findsOneWidget);

    
    await tester.tap(find.text('Primary'));
    await tester.pump();

    
  });
}
