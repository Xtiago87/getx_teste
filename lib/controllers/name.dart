import 'package:get/get.dart';

class NameController extends GetxController{

  var name = "Tiago".obs;

  changeName(String newName) => name.value = newName;


}