import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:agrocontabilapp/app/module/custoproducao/custoproducao/custoproducao_page.dart';

main() {
  testWidgets('CustoproducaoPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(
        buildTestableWidget(CustoproducaoPage(title: 'Custoproducao')));
    final titleFinder = find.text('Custoproducao');
    expect(titleFinder, findsOneWidget);
  });
}
