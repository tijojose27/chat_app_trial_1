import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat Demo',
      home: LoginMainScreen(),
    );
  }
}

class LoginMainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: true,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Stack(
              children: <Widget>[SignOnWithLogo()],
            ),
          ),
        ));
  }
}

class SignOnWithLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          height: 20,
        ),
        Container(
          height: 200,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/chat_logo.png"))),
        ),
        Text(
          "Chat App",
          style: TextStyle(
              fontSize: 30,
              color: Color.fromRGBO(211, 56, 107, 1),
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 50,
        ),
        Container(
          width: 300,
          child: TextField(
            style: TextStyle(
              color: Color.fromRGBO(211, 56, 107, 1),
            ),
            decoration: InputDecoration(
                hintText: "EMAIL",
                prefixIcon: Icon(
                  Icons.person_outline,
                  color: Color.fromRGBO(211, 56, 107, 1),
                ),
                hintStyle: TextStyle(
                  fontSize: 15,
                  color: Color.fromRGBO(211, 56, 107, 1),
                ),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                  color: Color.fromRGBO(211, 56, 107, 1),
                )),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.lightBlueAccent))),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          width: 300,
          child: TextField(
            style: TextStyle(
              color: Color.fromRGBO(211, 56, 107, 1),
            ),
            obscureText: true,
            decoration: InputDecoration(
                hintText: "PASSWORD",
                prefixIcon: Icon(
                  Icons.lock_outline,
                  color: Color.fromRGBO(211, 56, 107, 1),
                ),
                hintStyle: TextStyle(
                  fontSize: 15,
                  color: Color.fromRGBO(211, 56, 107, 1),
                ),
                enabledBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromRGBO(117, 135, 177, 1))),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.lightBlueAccent))),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        SizedBox(
          width: 300,
          child: MaterialButton(
            onPressed: () {},
            textColor: Colors.white,
            elevation: 0,
            highlightElevation: 6,
            splashColor: Colors.pinkAccent,
            color: Color.fromRGBO(211, 56, 107, 1),
            child: Text(
              "Login",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
          ),
        ),
        SizedBox(
          width: 300,
          child: MaterialButton(
            onPressed: () {},
            textColor: Colors.white,
            elevation: 0,
            highlightElevation: 6,
            splashColor: Colors.pinkAccent,
            color: Color.fromRGBO(211, 56, 107, 1),
            child: Text(
              "CREATE ACCOUNT",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
          ),
        ),
        SizedBox(height: 100,),
        Text("FORGOT PASSWORD?   CLICK HERE", style: TextStyle(color: Color.fromRGBO(211, 56, 107, 1),fontSize: 15, fontWeight: FontWeight.bold),)
        
      ],
    );
  }
}
