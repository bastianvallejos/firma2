import 'package:flutter/material.dart';
import 'package:loginfirmad/src/pages/home_page.dart';
import 'package:loginfirmad/src/pages/nuevo_documento.dart';

class NuevaPagina extends StatelessWidget {
  static final String routeName = "nueva_pagina";
  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //     appBar: AppBar(
    //       leading: ElevatedButton(
    //         onPressed: () {
    //           Navigator.pop(context);
    //         },
    //         child: Icon(Icons.arrow_back),
    //       ),
    //       title: Text('Me gusta la poronga'),
    //     ),
    //     body: Container(
    //       color: Colors.red,
    //       width: double.infinity,
    //       height: 500,
    //     ));
    return Scaffold(
      appBar: AppBar(
        title: Text('Menú'),
      ),
      drawer: MenuWidget(),
    );
  }
}

class MenuWidget extends StatelessWidget {
  static final String routeName = "menu_widget";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(padding: EdgeInsets.zero, children: [
        DrawerHeader(
            child: Container(),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/menu-img.jpg'),
                    fit: BoxFit.fill))),
        ListTile(
          title: Text('Home'),
          leading: Icon(
            Icons.home,
            color: Colors.blue,
          ),
          onTap: () {
            Navigator.pushNamed(context, 'home');
          },
        ),
        ListTile(
          title: Text('Documentos Pendientes'),
          leading: Icon(
            Icons.document_scanner_outlined,
            color: Colors.blue,
          ),
          onTap: () {},
        ),
        ListTile(
          title: Text('Enviar Documentos'),
          leading: Icon(
            Icons.people_outline_sharp,
            color: Colors.blue,
          ),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => EnviarDocumento()));
          },
        ),
        ListTile(
          title: Text('Mi Perfil'),
          leading: Icon(
            Icons.settings,
            color: Colors.blue,
          ),
          onTap: () {},
        ),
      ]),
    );
  }
}
