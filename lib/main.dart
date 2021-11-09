import 'package:flutter/material.dart';
import 'package:loginfirmad/src/bloc/provider.dart';
import 'package:loginfirmad/src/pages/home_page.dart';
import 'package:loginfirmad/src/pages/login_page.dart';
import 'package:loginfirmad/src/pages/nuevo_documento.dart';
import 'package:loginfirmad/src/pages/producto_page.dart';
import 'package:loginfirmad/src/pages/profilepage.dart';
import 'package:loginfirmad/src/pages/registro_page.dart';

import 'src/pages/nueva_pagina.dart';
//import 'package:loginfirmad/src/preferencias_usuario/preferencias_usuario.dart';

void main() => runApp(MyApp());

///MAIN DE LA APP [NOS AYUDA A SABER CUAL ES EL ORIGEN DE INICIO]
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'login',
        routes: {
          'profile': (BuildContext context) => ProfilePage(),
          'enviar_documento': (BuildContext context) => EnviarDocumento(),
          'login': (BuildContext context) => LoginPage(),
          'registro': (BuildContext context) => RegistroPage(),
          'home': (BuildContext context) => HomePage(),
          'producto': (BuildContext context) => ProductoPage(),
          'newHome': (BuildContext context) => NuevaPagina(),
          //'preferencias': (BuildContext context) => PreferenciasUsuario(),
        },
      ),
    );
  }
}
