import 'package:chat/screens/contact_screen/contacts_screen.dart';
import 'package:chat/screens/home_screen/home_screen.dart';
import 'package:chat/screens/splash_screen/my_splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Chat',
      theme: ThemeData(
          primaryColor: Color(0xffC71A4A), accentColor: Color(0xffFAD7D4)),
      /* routes: Routes.routes(),
      initialRoute: Routes.initScreen(), */
      home: MySplashScreen(),
      routes: {
        /* '/': (context) => MySplashScreen(), */
        '/Chat': (context) => HomeScreen(),
        '/Contatos': (context) => ContactsScreen()
      },
      /* initialRoute: '/',
      onGenerateRoute: RouteGenarator.generateRoute, */
    );
  }
}
