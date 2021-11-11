import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:six_flutter_project/screens/login_screen.dart';
import 'package:six_flutter_project/screens/register_screen.dart';
import 'package:six_flutter_project/screens/screens.dart';
import 'package:six_flutter_project/services/services.dart';

void main() => runApp(AppState());

class AppState extends StatelessWidget {
  const AppState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProductsServices()),
        ChangeNotifierProvider(create: (_) => AuthService())
      ],
      child: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Producto App',
        debugShowCheckedModeBanner: false,
        initialRoute: LoginScreen.routeName,
        routes: {
          HomeScreen.routeName: (BuildContext context) => HomeScreen(),
          LoginScreen.routeName: (BuildContext context) => LoginScreen(),
          ProductScreen.routeName: (BuildContext context) => ProductScreen(),
          RegisterScreen.routeName: (BuildContext context) => RegisterScreen(),
          CheckScreen.routeName: (BuildContext context) => CheckScreen(),
          NuevaPagina.routeName: (BuildContext context) => NuevaPagina(),
          ProfileScreen.routeName: (BuildContext context) => ProfileScreen()
        },
        scaffoldMessengerKey: NotificationService.messegerKey,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Colors.grey[300],
          appBarTheme: AppBarTheme(
            elevation: 0,
            color: Colors.indigo,
          ),
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Colors.indigo,
            elevation: 0,
          ),
        ));
  }
}
