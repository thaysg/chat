import 'package:chat/routes/routes.dart';
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
          primaryColor: Color(0xffC71A4A), accentColor: Color(0xffEED8F0)),
      routes: Routes.routes(),
      initialRoute: Routes.initScreen(),
    );
  }
}
