import 'package:flutter/material.dart';

class EquipamentobenfeitoriaPage extends StatefulWidget {

  @override
  _EquipamentobenfeitoriaPageState createState() =>
      _EquipamentobenfeitoriaPageState();
}

class _EquipamentobenfeitoriaPageState
    extends State<EquipamentobenfeitoriaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Equipamentos e benfeitorias", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20, color: Colors.white),),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed:(){
            
          }),
          SizedBox(
            width: 10,
          ),
          IconButton(icon: Icon(Icons.add_circle_outline), onPressed:(){
            Navigator.pushReplacementNamed(context, '/additens');
          }),
        ],
      ),
      body: Container(
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height/3.5,
            child: Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children:[

                ]
              ),
            ),
          );
          },

        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        height: 50,
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: RaisedButton(
          child: Center(
            child: Text("Proximo", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w800, color: Colors.white)),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          color: Colors.indigoAccent.shade700,
          onPressed:(){}),
      ),
    );
  }
}
