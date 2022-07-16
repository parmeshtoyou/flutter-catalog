import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _name = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(children: [
        Image.asset("assets/images/login.png", fit: BoxFit.cover),
        SizedBox(height: 20.0),
        Text(
          "Welcome $_name",
          style: TextStyle(fontSize: 22.0),
        ),
        SizedBox(height: 40.0),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextFormField(
            decoration: InputDecoration(
                hintText: "Enter Username", labelText: "Username"),
            onChanged: (value) => {
              setState(() {
                _name = value;
              })
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextFormField(
            obscureText: true,
            decoration: InputDecoration(
                hintText: "Enter Password", labelText: "Password"),
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        InkWell(
          onTap: () async {
            setState(() {
              changeButton = true;
            });
            await Future.delayed(Duration(seconds: 1));
            Navigator.pushNamed(context, MyRoutes.homeRoute);
          },
          child: AnimatedContainer(
            duration: Duration(seconds: 1),
            height: 50,
            width: changeButton ? 50 : 150,
            alignment: Alignment.center,
            child: changeButton
                ? Icon(
                    Icons.done,
                    color: Colors.white,
                  )
                : Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
            decoration: BoxDecoration(
                color: Colors.deepPurple,
                shape: changeButton ? BoxShape.circle : BoxShape.rectangle),
          ),
        )
        // ElevatedButton(
        //   onPressed: () => {Navigator.pushNamed(context, MyRoutes.homeRoute)},
        //   child: Text("Login"),
        //   style: TextButton.styleFrom(),
        // )
      ]),
    );
  }
}
