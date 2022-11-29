import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: MyButton(),
  ));
}

class MyButton extends StatefulWidget {
  @override
  _MyButtonState createState() => new _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  String mensaje = "";
  int index = 0;
  //creamos un arreglo de string
  List<String> lema = ['Una vez', 'libres', 'siempre', 'Liebres! :3'];

  void apretar() {
    //con esto llenamos a variable
    setState(() {
      mensaje = lema[index];

      // for (int i = 0; lema.length < 5; i++) {
      //   print(lema[i]);
      // }
      //index = index < 3 ? index + 1 : 0;

      //ambos index, hacen lo mismoo
      if (index < 3) {
        index = index + 1;
      } else {
        index = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Boton Libres"),
          backgroundColor: Colors.red,
        ),
        body: new Container(
            child: new Center(
                child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(mensaje, style: new TextStyle(fontSize: 40.0)),
            new Padding(padding: new EdgeInsets.all(10.0)),
            new ElevatedButton(
              child: new Text(
                "Siguiente mensaje",
                style: new TextStyle(color: Colors.white),
              ),

              //propiedad cuando se aprieta el boton :3
              onPressed: apretar,
            )
          ],
        ))));
  }
}
