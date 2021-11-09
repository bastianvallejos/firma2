import 'package:flutter/material.dart';
import 'package:loginfirmad/src/pages/nueva_pagina.dart';

class EnviarDocumento extends StatelessWidget {
  @override
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'menu_2',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color _color = Colors.deepOrange;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Enviar un nuevo documento'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => NuevaPagina()));
            },
          ),
          backgroundColor: Colors.orange,
          actions: <Widget>[]),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: _Body(
              icon: Icons.ac_unit_sharp,
              tituloBoton: 'adssda',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: _Body(
              icon: Icons.ac_unit_sharp,
              tituloBoton: 'adssda',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: _Body(
              icon: Icons.ac_unit_sharp,
              tituloBoton: 'adssda',
            ),
          ),
        ],
      ),
    );
  }
}

class _Body extends StatelessWidget {
  final String tituloBoton;
  final IconData icon;

  const _Body({Key key, this.tituloBoton, this.icon}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 20),
        GestureDetector(
          onTap: () {
            //TODO: Cambiar ruta
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => NuevaPagina()));
          },
          child: Icon(this.icon),
        ),
        SizedBox(width: 10),
        GestureDetector(
          child: RichText(
            textAlign: TextAlign.center,
            overflow: TextOverflow.fade,
            softWrap: false,
            text: TextSpan(
              children: [
                TextSpan(
                  text: '$tituloBoton',
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => NuevaPagina()));
          },
        ),
      ],
    );
  }
}


//  Container(
//         padding: EdgeInsets.only(top: 120),
//         child: Center(
//             child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: <Widget>[
//             ElevatedButton(
//               child: Container(
//                 padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 10.0),
//                 child: Container(
//                     child: Text('Acta', style: TextStyle(color: Colors.white))),
//                 decoration: BoxDecoration(
//                   color: Colors.deepOrange,
//                 ),
//               ),
//               onPressed: () {},
//             ),
//             SizedBox(height: 10),
//             ElevatedButton(
//               child: Container(
//                 padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 10.0),
//                 child:
//                     Text('Certificado', style: TextStyle(color: Colors.white)),
//                 decoration: BoxDecoration(
//                   color: Colors.deepOrange,
//                 ),
//               ),
//               onPressed: () {},
//             ),
//             SizedBox(height: 10),
//             ElevatedButton(
//               child: Container(
//                 padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 10.0),
//                 child:
//                     Text('Comprobante', style: TextStyle(color: Colors.white)),
//                 decoration: BoxDecoration(
//                   color: Colors.deepOrange,
//                 ),
//               ),
//               onPressed: () {},
//             ),
//             SizedBox(height: 10),
//             ElevatedButton(
//               child: Container(
//                 padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 10.0),
//                 child: Text('Memos', style: TextStyle(color: Colors.white)),
//                 decoration: BoxDecoration(
//                   color: Colors.deepOrange,
//                 ),
//               ),
//               onPressed: () {},
//             ),
//             SizedBox(height: 10),
//             ElevatedButton(
//               child: Container(
//                 padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 10.0),
//                 child: Text('Minutas', style: TextStyle(color: Colors.white)),
//                 decoration: BoxDecoration(
//                   color: Colors.deepOrange,
//                 ),
//               ),
//               onPressed: () {},
//             ),
//             SizedBox(height: 10),
//             ElevatedButton(
//               child: Container(
//                 padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 10.0),
//                 child: Text('Orden de compra',
//                     style: TextStyle(color: Colors.white)),
//                 decoration: BoxDecoration(
//                   color: Colors.deepOrange,
//                 ),
//               ),
//               onPressed: () {},
//             ),
//             SizedBox(height: 10),
//             SizedBox(height: 10),

//           ],
//         )),
//       ),
