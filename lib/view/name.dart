import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_test_project/controllers/name.dart';
import 'package:get/get.dart';
import 'package:getx_test_project/widgets/drawer.dart';

class NameView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final NameController n = Get.find();
    final TextEditingController _nameText = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Obx(() => Text("Name = ${n.name}")),
      ),
        drawer: Drawer(child: MyDrawer()),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: TextFormField(
                controller: _nameText,
                cursorColor: Colors.red,
                maxLength: 20,
                decoration: InputDecoration(
                  labelText: 'Label text',
                  labelStyle: TextStyle(
                    color: Color(0xFF6200EE),
                  ),
                  helperText: 'Helper text',
                  suffixIcon: Icon(
                    Icons.check_circle,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF6200EE)),
                  ),
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              n.changeName(_nameText.text.toString());
            },
            child: Text("Mudar nome"),
          )
        ],
      ),
    );
  }
}
