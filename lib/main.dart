import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_test_project/view/counter.dart';
import 'package:getx_test_project/view/home.dart';
import 'package:getx_test_project/view/name.dart';

void main() {
  //GetMaterialApp is necessary for routes, snackbars, internationalization, bottomSheets, dialogs, and high-level apis related to routes and absence of context.
  //This step is only necessary if you gonna use route management (Get.to(), Get.back() and so on). If you not gonna use it then it is not necessary to do step 1
  runApp(
    GetMaterialApp(
      home: Home(),
      getPages: [
        GetPage(name: "/", page: () => Home()),
        GetPage(name: "/counter", page: () => CounterView()),
        GetPage(name: "/name", page: () => NameView()),

      ],
    ),
  );
}
