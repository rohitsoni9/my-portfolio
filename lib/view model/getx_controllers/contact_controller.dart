import 'package:get/get.dart';

class ContactController extends GetxController {
  RxList<bool> hovers = [
    false,
    false,
    false,
    false,
    false,
  ].obs;
  
  void onHover(int index, bool value) {
    hovers[index] = value;
  }
} 