import 'package:flutter/material.dart';
import 'package:loginfirmad/src/pages/nueva_pagina.dart';

import 'nuevo_documento.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'menu',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
          title: Text('menu'),
          backgroundColor: Colors.orange,
          actions: <Widget>[]),
      body: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
            decoration: BoxDecoration(
              color: Colors.deepOrange,
            ),
            child: ElevatedButton(
              child: Text('Documentos Pendientes',
                  style: TextStyle(color: Colors.white)),
              onPressed: () {
                Navigator.pushNamed(context, 'login');
              },
            ),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
            decoration: BoxDecoration(
              color: Colors.deepOrange,
            ),
            child: ElevatedButton(
              child: Text('Enviar un nuevo documento'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => NuevaPagina()));

                // Navigator.pushNamed(context, 'nueva_pagina');
              },
            ),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
            decoration: BoxDecoration(
              color: Colors.deepOrange,
            ),
            child: ElevatedButton(
              child: Text('Mi perfil'),
              onPressed: () {
                //TODO: navegación a vista de perfil
              },
            ),
          ),
        ],
      )
          //color: _color,
          ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: showButtons,
      //   tooltip: 'Increment',
      //   child: Icon(Icons.add),
      // ),
    );
  }

  // void showButtons() {
  //   showDialog(
  //       context: context,
  //       builder: (BuildContext context) {
  //         return Stack(
  //           alignment: Alignment.center,
  //           children: <Widget>[
  //             Container(
  //               margin: EdgeInsets.all(10.0),
  //               child: Column(
  //                 crossAxisAlignment: CrossAxisAlignment.center,
  //                 mainAxisAlignment: MainAxisAlignment.center,
  //                 children: <Widget>[
  //                   createButton(Colors.red, 'red'),
  //                   createButton(Colors.yellow, 'yellow'),
  //                   createButton(Colors.green, 'green')
  //                 ],
  //               ),
  //             )
  //           ],
  //         );
  //       });
  // }

  // RaisedButton createButton(Color color, String name) {
  //   return RaisedButton(
  //     color: color,
  //     onPressed: () {
  //       print('Print ' + name);
  //     },
  //     textColor: Colors.white,
  //     child: Center(
  //       child: Text('Floating button'),
  //     ),
  //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
  //   );
  // }

  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(title: Text('menu'), actions: <Widget>[]),
  //     body: PageView(
  //       scrollDirection: Axis.vertical,
  //       children: <Widget>[
  //         _crearBoton(context),
  //       ],
  //     ),
  //   );
  // }

  // Widget _crearBoton(BuildContext context) {
  //   return Stack(
  //     children: <Widget>[
  //       _button1(context),
  //       _text1(),
  //       //_button2(context),
  //     ],
  //   );
  // }

  // Widget _button1(BuildContext context) {
  //   return Container(
  //     width: double.infinity,
  //     height: double.infinity,
  //     color: Colors.white,
  //     child: SafeArea(
  //       child: Center(
  //         child: RaisedButton(
  //           shape: StadiumBorder(),
  //           color: Colors.orange[600],
  //           textColor: Colors.white,
  //           child: Padding(
  //             padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
  //             child: Text(
  //               'Documentos Pendientes',
  //               style: TextStyle(fontSize: 20.0),
  //             ),
  //           ),
  //           onPressed: () {
  //             Navigator.pushNamed(context, 'producto');
  //           },
  //         ),
  //       ),
  //     ),
  //   );
  // }

  // Widget _text1() {
  //   final estiloTitulo = TextStyle(color: Colors.white, fontSize: 22.5);
  //   final estiloSubtitulo = TextStyle(color: Colors.grey[100], fontSize: 16.0);

  //   return SafeArea(
  //     child: Column(
  //       crossAxisAlignment: CrossAxisAlignment.center,
  //       children: <Widget>[
  //         SizedBox(height: 100.0),
  //         Text('¡subtext!', style: estiloTitulo),
  //         Text('subtext 2 ', style: estiloSubtitulo),
  //         Text(' apretahueas', style: estiloSubtitulo),
  //         Expanded(child: Container()),
  //       ],
  //     ),
  //   );
  // }

  // Widget _button2(BuildContext context) {
  //   return Container(
  //     width: double.infinity,
  //     height: double.infinity,
  //     color: Colors.amber[400],
  //     child: SafeArea(
  //       child: Center(
  //         child: RaisedButton(
  //           shape: StadiumBorder(),
  //           color: Colors.amber[600],
  //           textColor: Colors.white,
  //           child: Padding(
  //             padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
  //             child: Text(
  //               'chupalooo',
  //               style: TextStyle(fontSize: 20.0),
  //             ),
  //           ),
  //           onPressed: () {
  //             Navigator.pushNamed(context, 'producto');
  //           },
  //         ),
  //       ),
  //     ),
  //   );
  // }

}
