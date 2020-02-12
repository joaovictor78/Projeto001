import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:agrocontabilapp/app/modules/equipamentobenfeitoria/additens/additens/additens_page.dart';

main() {
  testWidgets('AdditensPage has title', (WidgetTester tester) async {
    await tester
        .pumpWidget(buildTestableWidget(AdditensPage(title: 'Additens')));
    final titleFinder = find.text('Additens');
    expect(titleFinder, findsOneWidget);
  });
}
