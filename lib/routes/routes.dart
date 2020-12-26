import 'package:chat/screens/contact_screen/contacts_screen.dart';
import 'package:chat/screens/home_screen/home_screen.dart';
import 'package:chat/screens/login_screen/login_screen.dart';
import 'package:chat/screens/splash_screen/my_splash_screen.dart';

class Routes {
  static routes() {
    return {
      MySplashScreen.ROUTE_ID: (context) => MySplashScreen(),
      LoginScreen.ROUTE_ID: (context) => LoginScreen(),
      HomeScreen.ROUTE_ID: (context) => HomeScreen(),
      ContactsScreen.ROUTE_ID: (context) => ContactsScreen()
    };
  }

  static initScreen() {
    return MySplashScreen.ROUTE_ID;
  }
}

/* import 'package:chat/screens/contact_screen/contacts_screen.dart';
import 'package:chat/screens/home_screen/home_screen.dart';
import 'package:chat/screens/login_screen/login_screen.dart';
import 'package:chat/screens/splash_screen/my_splash_screen.dart';
import 'package:flutter/material.dart';

class RouteGenarator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => MySplashScreen());
      case '/login_screen':
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case '/home_screen':
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case '/contacts_screen':
        return MaterialPageRoute(builder: (_) => ContactsScreen());
      default:
        _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        body: Center(
          child: Text('Tela não encontrada'),
        ),
      );
    });
  }
} */
