// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:six_flutter_project/services/services.dart';

class ProfileScreen extends StatelessWidget {
  static final String routeName = "profile_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.indigo,
          actions: [
            //Se realiza un pop para ir hacia el menú
          ],
          // leading: IconButton(
          //   icon: Icon(Icons.arrow_back),
          //   onPressed: () {
          //     Navigator.pop(context);
          //   },
          // ),
        ),
        body: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _titleProfile(),
                SizedBox(height: 10),
                _imageProfile(),
                SizedBox(height: 20),
                _bodyProfile(),
              ],
            )
          ],
        ));
  }
}

class _bodyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 250,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(
                'Nombre: Juan Carlos',
                style: TextStyle(
                    fontSize: 12,
                    letterSpacing: 1.5,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                'Apellido: Chupa Pija',
                style: TextStyle(
                    fontSize: 12,
                    letterSpacing: 1.5,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                'Fecha Nacimiento: 13-08-1994',
                style: TextStyle(
                    fontSize: 12,
                    letterSpacing: 1.5,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                'Email: HolaJuancalors@gmail.com',
                style: TextStyle(
                    fontSize: 12,
                    letterSpacing: 1.5,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ));
  }
}

class _titleProfile extends StatelessWidget {
  const _titleProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 120),
      child: Container(
          child: Text(
        'Profile',
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 35,
            letterSpacing: 1.5,
            color: Colors.black,
            fontWeight: FontWeight.bold),
      )),
    );
  }
}

class _imageProfile extends StatelessWidget {
  const _imageProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      width: MediaQuery.of(context).size.width / 2,
      height: MediaQuery.of(context).size.width / 2,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 5),
        shape: BoxShape.circle,
        color: Colors.white,
        image: DecorationImage(image: AssetImage('assets/Profile.jpg')),
      ),
    );
  }
}
