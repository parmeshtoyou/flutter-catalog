import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/widget/drawer.dart';

import '../widget/item_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(50, (index) => products[0]);

    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog"),
      ),
      drawer: AppDrawer(),
      body: ListView.builder(
        itemCount: dummyList.length,
        itemBuilder: (context, index) {
          return ItemWidget(
            key: null,
            item: dummyList[index],
          );
        },
      ),
    );
  }
}
