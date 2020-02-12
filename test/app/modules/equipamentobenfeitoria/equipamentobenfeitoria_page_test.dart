import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:agrocontabilapp/app/modules/equipamentobenfeitoria/equipamentobenfeitoria_page.dart';

main() {
  testWidgets('EquipamentobenfeitoriaPage has title',
      (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(
        EquipamentobenfeitoriaPage()));
    final titleFinder = find.text('Equipamentobenfeitoria');
    expect(titleFinder, findsOneWidget);
  });
}
