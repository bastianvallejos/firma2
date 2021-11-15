import 'package:flutter/material.dart';
import 'package:six_flutter_project/screens/profile_screen.dart';
import 'package:six_flutter_project/screens/login_screen.dart';

class NuevaPagina extends StatelessWidget {
  static final String routeName = "nueva_pagina";
  @override
  Widget build(BuildContext context) {
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
                color: Colors.white,
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
            Navigator.pushNamed(context, NuevaPagina.routeName);
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
            // Navigator.push(context,
            //     MaterialPageRoute(builder: (context) => EnviarDocumento()));
          },
        ),
        ListTile(
          title: Text('Mi Perfil'),
          leading: Icon(
            Icons.account_circle_sharp,
            color: Colors.blue,
          ),
          onTap: () {
            Navigator.pushNamed(context, ProfileScreen.routeName);
          },
        ),
        ListTile(
          title: Text('Cerrar sesion'),
          leading: Icon(
            Icons.arrow_back,
            color: Colors.blue,
          ),
          onTap: () {
            Navigator.pushNamed(context, LoginScreen.routeName);
          },
        ),
      ]),
    );
  }
}
