import 'package:agrocontabilapp/app/shared/global-components/textinput.dart';
import 'package:flutter/material.dart';

class CaracteristicasPage extends StatefulWidget {
  final String title;
  const CaracteristicasPage(
      {Key key, this.title = "Caracteristicas da propriedade"})
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
        backgroundColor: Colors.teal,
        title: Text(
          "Caracteristicas da propriedade",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
      ),

      body: Column(
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          TextInput(title: "Nome do proprietario"),
          SizedBox(
            height: 12,
          ),
          TextInput(title: "Nome da fazenda"),
          Container(
            width: MediaQuery.of(context).size.width,
             margin: EdgeInsets.symmetric(horizontal: 10),
             height: 60,
            child: DropdownButtonFormField(
              decoration: InputDecoration(
                fillColor: Colors.grey.shade300,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(28),
                  borderSide: BorderSide.none,
                ),
              ),
              hint: Text(' Principais atividade(s) :'),
              value: selected,
              items: itens
                  .map((option) => DropdownMenuItem(
                        child: Text(option),
                        value: option,
                      ))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  selected = value;
                });
              },
            ),
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        height: 54,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: RaisedButton(
          color: Colors.orangeAccent,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          onPressed: () {},
          child: Center(
            child: Text(
              "Proximo",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 25,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
