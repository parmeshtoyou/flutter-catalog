import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState?.validate() != null &&
        _formKey.currentState?.validate() == true) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Form(
        key: _formKey,
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
              validator: (value) {
                if (value != null && value.isEmpty) {
                  return "Username cannot be empty.";
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  hintText: "Enter Password", labelText: "Password"),
              validator: (value) {
                if (value != null && value.isEmpty) {
                  return "Password cannot be empty";
                } else if (value != null && value.length < 6) {
                  return "Password length should be atleast 6.";
                }
                return null;
              },
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Material(
            color: Colors.deepPurple,
            borderRadius: BorderRadius.circular(changeButton ? 50 : 150),
            child: InkWell(
              onTap: () => moveToHome(context),
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
              ),
            ),
          )
        ]),
      ),
    );
  }
}
