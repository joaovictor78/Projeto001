import 'package:flutter/material.dart';

class CaracteristicasPage extends StatefulWidget {
  final String title;
  const CaracteristicasPage({Key key, this.title = "Caracteristicas"})
      : super(key: key);

  @override
  _CaracteristicasPageState createState() => _CaracteristicasPageState();
}

class _CaracteristicasPageState extends State<CaracteristicasPage> {
  List<String> itens = ["Agricultura", "Pecuaria", "Agropecuaria"];
  String selected;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Caracteristicas da propriedade"),
      ),
      body: Column(
        children: <Widget>[
          DropdownButton(
            hint: Text("Principais atividade(s):"),
            items: itens
                .map((value) => DropdownMenuItem(
                      child: Text(selected),
                      value: selected,
                    ))
                .toList(),
            onChanged: (value) {
              setState(() {
                selected = value;
              });
            },
            value: selected,
          ),
        ],
      ),
      floatingActionButton: Container(
        child: RaisedButton(
          onPressed: () {},
          child: Center(
            child: Text("Proximo"),
          ),
        ),
      ),
    );
  }
}
