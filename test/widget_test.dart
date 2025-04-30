// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:test_counter_app/main.dart';

void main() {
  testWidgets('Fibonacci counter increments correctly', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // 初期状態を確認（最初の値は 1）
    expect(find.text('1'), findsOneWidget);
    expect(find.text('2'), findsNothing);

    // 1回タップ → 1 + 1 = 2
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();
    expect(find.text('2'), findsOneWidget);

    // 2回目のタップ → 1 + 2 = 3
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();
    expect(find.text('3'), findsOneWidget);

    // 3回目のタップ → 2 + 3 = 5
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();
    expect(find.text('5'), findsOneWidget);

    // 4回目のタップ → 3 + 5 = 8
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();
    expect(find.text('8'), findsOneWidget);
  });
}