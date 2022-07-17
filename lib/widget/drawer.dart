import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String imageUrl =
        "https://avatars.githubusercontent.com/u/2944296?s=400&u=311408878d5efa13104799deee82b75224440f65&v=4";
    return Drawer(
      backgroundColor: Colors.deepPurple,
      child: ListView(
        children: [
          DrawerHeader(
            child: UserAccountsDrawerHeader(
              accountEmail: Text("parmesh@gmail.com"),
              accountName: Text("Parmesh Mahore"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(imageUrl),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home, color: Colors.white),
            title: Text(
              "Home",
              textScaleFactor: 1.2,
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            leading: Icon(Icons.settings, color: Colors.white),
            title: Text(
              "Settings",
              textScaleFactor: 1.2,
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
