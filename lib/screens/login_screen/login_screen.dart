import 'package:chat/screens/home_screen/home_screen.dart';
import 'package:chat/screens/signup_screen/signup_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const String ROUTE_ID = 'login_screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffC71A4A),
      body: ListView(
        shrinkWrap: true,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SafeArea(
                minimum: const EdgeInsets.only(top: 32),
                top: true,
                child: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Image.asset('images/interview.png', height: 150),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Flutter Chat',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(32, 10, 32, 10),
                child: TextField(
                  //textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    hintText: 'Usuário',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.all(20.0),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(32, 10, 32, 10),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    hintText: 'Senha',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.all(20.0),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(32, 10, 32, 10),
                child: SizedBox(
                  height: 50,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                    },
                    color: Color(0xff3E5FF5),
                    child: Text(
                      'Login',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(32, 10, 32, 10),
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignupScreen()));
                  },
                  child: Text(
                    'Ainda não possui uma conta? \nCadastre-se Agora!',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
