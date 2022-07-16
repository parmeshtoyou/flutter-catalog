import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(children: [
        Image.asset("assets/images/login.png", fit: BoxFit.cover),
        SizedBox(height: 20.0),
        Text(
          "Welcome",
          style: TextStyle(fontSize: 22.0),
        ),
        SizedBox(height: 40.0),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextFormField(
            decoration: InputDecoration(
                hintText: "Enter Username", labelText: "Username"),
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
        ElevatedButton(
          onPressed: () => {
            print("Hello Parmesh")
          }, 
          child: Text("Login"),
          style: TextButton.styleFrom(),)
      ]),
    );
  }
}
