import 'package:get/get.dart';
import 'package:infinity_space/core/global.dart';

class LoadController extends GetxController {
  final currentUrl = Uri.base;
  String msgLoad = "Carregando...";

  @override
  void onClose() {
    super.onClose();
  }

  @override
  void onInit() {
    loadingApp();
    super.onInit();
  }

  Future<void> loadingApp() async {
    try {
      await Get.putAsync(() => Global().initApp()).then((value) async {});
    } catch (e) {
      //Get.offAllNamed(Routes.login);
    }
  }
}
