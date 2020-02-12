import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:agrocontabilapp/app/modules/maodeobra/maodeobra_page.dart';

main() {
  testWidgets('MaodeobraPage has title', (WidgetTester tester) async {
    await tester
        .pumpWidget(buildTestableWidget(MaodeobraPage(title: 'Maodeobra')));
    final titleFinder = find.text('Maodeobra');
    expect(titleFinder, findsOneWidget);
  });
}
