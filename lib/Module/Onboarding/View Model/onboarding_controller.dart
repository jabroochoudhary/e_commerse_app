import '/Module/Authantication/Views/login_view.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  RxInt index = 0.obs;
  incrementIndex() {
    index.value++;
    if (index.value == 3) {
      Get.offAll(() => LoginView());
    }
  }

  skipOnboarding() {
    Get.offAll(() => LoginView());
  }
}
