import 'package:flutter/material.dart';

void main() => runApp(MiSmartApp());

class MiSmartApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MiSmart',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: <String, WidgetBuilder>{
        "/inicio": (BuildContext context) => Inicio(),
        "/empresa": (BuildContext context) => Empresa(),
        "/productos": (BuildContext context) => Productos(),
        "/contacto": (BuildContext context) => Contacto(),
      }, //fin de rutas
      debugShowCheckedModeBanner: false,
      home: Inicio(),
    ); //Fin de material app
  } //fin de widget build
} //fin mi smart app

class Empresa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Empresa Castillo'),
      ),
      body: Center(
        child: Text("Seccion Empresa"),
      ),
    );
  } //fin de empresa
} //fin de widget empresa

class Productos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Productos Castillo'),
      ),
      body: Center(
        child: Text("Seccion Productos"),
      ),
    );
  } //fin de productos
} //fin de widget productos

class Contacto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Contacto Castillo'),
      ),
      body: Center(
        child: Text("Seccion Contacto"),
      ),
    );
  } //fin de contacto
} //fin de widget contacto

class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 130, bottom: 10, right: 10, left: 10),
        decoration: BoxDecoration(
          color: Colors.lightBlue,
          image: DecorationImage(
            image: NetworkImage("https://th.bing.com/th/id/Raedfecd0745dd577aa3ea231e91d11d5?rik=o3X3cBeayRhI6Q&riu=http%3a%2f%2fwww.supermercadossmart.com%2fviews_yea%2fimg%2fpagina%2fHome%2fnuevologo-smart.png&ehk=av9jM2YQvZd9tXCudKklLKNF0hl0pcIUhGJ3S0MOvtM%3d&risl=&pid=ImgRaw"),
            alignment: Alignment.topCenter,
          ),
        ), //fin de box decoration
        child: Column(
          children: <Widget>[
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: RaisedButton(
                      color: Colors.white,
                      shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                      onPressed: () {
                        Navigator.pushNamed(context, "/inicio");
                      },
                      child: SizedBox(
                        width: 100,
                        height: 100,
                        child: Center(
                          child: Text(
                            "Inicio",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ), //center
                      ), //sized box
                    ), //boton inicio
                  ), //padding
                ], //widget[]
              ), //fin columna 1
              Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: RaisedButton(
                      color: Colors.white,
                      shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                      onPressed: () {
                        Navigator.pushNamed(context, "/empresa");
                      },
                      child: SizedBox(
                        width: 100,
                        height: 100,
                        child: Center(
                          child: Text(
                            "Empresa",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ), //center
                      ), //sized box
                    ), //boton inicio
                  ), //padding
                ], //widget[]
              ), //fin columna 2
            ]), //fin de fila 1
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: RaisedButton(
                      color: Colors.white,
                      shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                      onPressed: () {
                        Navigator.pushNamed(context, "/productos");
                      },
                      child: SizedBox(
                        width: 100,
                        height: 100,
                        child: Center(
                          child: Text(
                            "Productos",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ), //center
                      ), //sized box
                    ), //boton inicio
                  ), //padding
                ], //widget[]
              ), //fin columna 1
              Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: RaisedButton(
                      color: Colors.white,
                      shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                      onPressed: () {
                        Navigator.pushNamed(context, "/contactos");
                      },
                      child: SizedBox(
                        width: 100,
                        height: 100,
                        child: Center(
                          child: Text(
                            "Contactos",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ), //center
                      ), //sized box
                    ), //boton inicio
                  ), //padding
                ], //widget[]
              ), //fin columna 2
            ]), //fin de fila 1
          ], //fin de widget []
        ),
      ), //fin de container
    ); // fin de sacffold
  } //fin de widget build inicio
} //fin de inicio
