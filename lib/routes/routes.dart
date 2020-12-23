import 'package:chat/screens/my_splash_screen.dart';

class Routes {
  static routes() {
    return {
      MySplashScreen.ROUTE_ID: (context) => MySplashScreen(),
    };
  }

  static initScreen() {
    return MySplashScreen.ROUTE_ID;
  }
}
