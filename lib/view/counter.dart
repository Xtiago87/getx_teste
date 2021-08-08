import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_test_project/controllers/counter.dart';
import 'package:get/get.dart';
import 'package:getx_test_project/widgets/drawer.dart';

class CounterView extends StatelessWidget {
  // Instantiate your class using Get.put() to make it available for all "child" routes there.
  final CounterController c = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(child: MyDrawer()),
        appBar: AppBar(title: Obx(() => Text("Clicks: ${c.count}"))),
        body: Center(child: Text("Clica no buttom para mudar o num")),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add), onPressed: c.increment));
  }
}
