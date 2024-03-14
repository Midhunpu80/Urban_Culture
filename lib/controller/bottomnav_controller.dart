import 'package:get/get.dart';

class bottomnav_controller extends GetxController {
  var indexx = 2.obs;
  change({required var index}) {
    indexx.value = index;
  }
}
