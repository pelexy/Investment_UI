import 'package:get/state_manager.dart';

class ButtomNavController extends GetxController {
  var selectedPageIndex = 0;
  void changeTabIndex(int index) {
    selectedPageIndex = index;
    update();
    // ignore: avoid_print
  }
}
