import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Now that you have a Drawer in place, add content to it. For this example, use a ListView.
    // While you could use a Column widget, ListView is handy because it allows users to scroll through the drawer if the content takes more space than the screen supports.
   return ListView(
     children: [
       DrawerHeader(
         child: Center(child: const Text("Drawer header")),
       ),
       ListTile(
         title: const Text('Home'),
         onTap: () {
           Get.toNamed("/");
         },
       ),
       ListTile(
         title: const Text('Change name'),
         onTap: () {
           Get.toNamed("name");
         },
       ),
       ListTile(
         title: const Text('Counter'),
         onTap: () {
           Get.toNamed("/counter");
         },
       ),
     ],
   );
  }

}