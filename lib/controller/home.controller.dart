import 'package:flutter_web3/flutter_web3.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  static const String operationChain = "56";

  String currentAddress = "";
  int currentChain = -1;

  bool get isEnabled => ethereum != null;

  bool get isInOperationChan => currentChain == operationChain;

  bool get isConnect => isEnabled && currentAddress.isNotEmpty;

  void connect() async {
    if (isEnabled) {
      final accs = await ethereum!.requestAccount();
      if (accs.isNotEmpty) currentAddress = accs.first;

      currentChain = await ethereum!.getChainId();
      update();
    }
  }

  void clear() {
    currentAddress = '';
    currentChain = -1;
    update();
  }
}
