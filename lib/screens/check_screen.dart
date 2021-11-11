import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:six_flutter_project/screens/home_screen.dart';
import 'package:six_flutter_project/screens/screens.dart';
import 'package:six_flutter_project/services/services.dart';

class CheckScreen extends StatelessWidget {
  static final String routeName = "check_screen";

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context, listen: false);
    return Scaffold(
      body: FutureBuilder(
        future: authService.readToken(),
        builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
          if (!snapshot.hasData)
            return Text(' ', style: TextStyle(color: Colors.black));

          if (snapshot.data == '') {
            Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);

            Future.microtask(() {
              Navigator.pushReplacement(context,
                  PageRouteBuilder(pageBuilder: (_, __, ___) => LoginScreen()));
            });
          } else {
            Future.microtask(() {
              Navigator.pushReplacement(context,
                  PageRouteBuilder(pageBuilder: (_, __, ___) => HomeScreen()));
            });
          }
          return Container();
        },
      ),
    );
  }
}
