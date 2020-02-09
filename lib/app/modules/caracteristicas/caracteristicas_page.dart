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
         
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
      
        height: 45,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(horizontal: 15),
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
