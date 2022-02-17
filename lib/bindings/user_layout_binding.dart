import 'package:get/get.dart';
import 'package:investwise/controllers/bottom_nav_controller.dart';

class UserLayoutBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ButtomNavController>(() => ButtomNavController());
  }
}
