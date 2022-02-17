import 'package:get/get.dart';

class Global extends GetxService {
  Future<Global> initApp() async {
    // await Hive.initFlutter();
    // box = await Hive.openBox("data");

    return this;
  }
}
