import 'package:flutter/material.dart';
import 'package:flutter_catalog/widget/drawer.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog"),
      ),
      drawer: AppDrawer(),
    );
  }
}