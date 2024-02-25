import 'package:get/state_manager.dart';

class GlobelController extends GetxController {
  bool isHover = false;
  RxBool isBorderEnabled = false.obs;
  void updateBroderOnEnter() {
    isBorderEnabled.value = !isBorderEnabled.value;
  }
}
