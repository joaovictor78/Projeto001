import 'package:flutter/material.dart';
import 'components/draggablebutton.dart';

class CustoproducaoPage extends StatefulWidget {
  final String title;
  const CustoproducaoPage({Key key, this.title = "Custoproducao"})
      : super(key: key);

  @override
  _CustoproducaoPageState createState() => _CustoproducaoPageState();
}

class _CustoproducaoPageState extends State<CustoproducaoPage> {
  var maoDeObra = DraggableButton(title: "MÃO DE OBRA");
  var insumos = DraggableButton(title: "INSUMOS");
  var despesasAdministrativas = DraggableButton(title: "DESPESAS ADMINISTRATIVAS");
  var outros = DraggableButton(title: "OUTROS CUSTOS");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Custo de produção",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.topCenter,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.6,
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.elliptical(120, 90),
                    bottomRight: Radius.elliptical(120, 90)),
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                      height: MediaQuery.of(context).size.height / 3.2,
                      width: MediaQuery.of(context).size.width,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        elevation: 7,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                alignment: Alignment.centerLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    maoDeObra,
                    insumos,
                    despesasAdministrativas,
                    outros,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/caracteristicas');
        },
        child: Center(
          child: Icon(
            Icons.keyboard_arrow_right,
            color: Colors.white,
            size: 30,
          ),
        ),
      ),
    );
  }
}
