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
      routes: <String,WidgetBuilder>{
        "/inicio":(BuildContext context)=>Inicio(),
        "/empresa":(BuildContext context)=>Empresa(),
        "/productos":(BuildContext context)=>Productos(), 
        "/contacto":(BuildContext context)=>Contacto(),
      },//fin de rutas
      debugShowCheckedModeBanner: false,
      home:Inicio(),
    );//Fin de material app
  }//fin de widget build
}//fin mi smart app

class Empresa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
          
          appBar: AppBar(
            title: Text('Empresa'),
            
          ),
          body: Center(
            child: Text("Seccion Empresa"),  
          ),
          );
  }//fin de empresa
}//fin de widget empresa

class Productos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
          appBar: AppBar(
            title: Text('Productos'),
          ),
          body: Center(
            child: Text("Seccion Empresa"),
          ),
          );
  }//fin de productos
}//fin de widget productos

class Contacto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
          appBar: AppBar(
            title: Text('Contacto'),
          ),
          body: Center(
            child: Text("Seccion Empresa"),
          ),
          );
  }//fin de contacto
}//fin de widget contacto

class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
          
          body: Container(
            padding: EdgeInsets.only(top: 130,bottom: 10, right: 10, left: 10),
            decoration: BoxDecoration(
              color: Colors.lightBlue,
              image: DecorationImage( image:NetworkImage("https://raw.githubusercontent.com/FaridCG343/MisImagenes/main/consejos-vacunas-peru.png"),
              alignment :Alignment.topCenter,
              ),
            ),//fin de box decoration
            child: Column(
                    children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                        Column(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: RaisedButton(
                                color: Colors.green[200],
                                shape: new RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0) 
                                ),
                                onPessed:(){
                                  Navigator.pushNamed(context, "/inicio");
                                },
                                child: SizedBox(
                                  width: 100,
                                  heigth: 100,
                                  child: Center(
                                    child: Text(
                                      "Inicio",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.indigo,
                                        fontWeight: FontWeight.w900,
                                      ),
                                      ),
                                    ),//center
                                ),//sized box
                              ),//boton inicio
                            ),//padding
                          ],//widget[]   
                         ),//fin columna 1
                        ),//fin de fila 1

                    ],//fin de widget []
                  ),
          ),//fin de container
        );// fin de sacffold
  }//fin de widget build inicio
}//fin de inicio