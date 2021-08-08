import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_test_project/controllers/counter.dart';
import 'package:getx_test_project/controllers/name.dart';
import 'package:getx_test_project/widgets/drawer.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  @override
  Widget build(context) {

    final CounterController c = Get.put(CounterController());

    final NameController n = Get.put(NameController());

    return Scaffold(
        // Use Obx(()=> to update Text() whenever count is changed.
        appBar: AppBar(title: Text("Teste getx e outras coisas")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 32.0),
              child: Center(
                child: Obx(
                  () => Text(
                    "Nome = ${n.name}",
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ),
            ),
            Center(
              child: Obx(
                () => Text(
                  "Contador = ${c.count}",
                  style: TextStyle(fontSize: 24),
                ),
              ),
            )
          ],
        ),
        drawer: Drawer(child: MyDrawer()));
  }
}
