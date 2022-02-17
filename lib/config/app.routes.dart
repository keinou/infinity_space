import 'package:get/get.dart';
import 'package:infinity_space/view/loading.view.dart';

class AppRoutes {
  static String init = '/loading';

  static const String home = '/home';
  static const String login = '/login';
  static const String loading = '/loading';
  static const String register = '/register';
  static List<GetPage> rotas = [
    GetPage(
      name: loading,
      page: () => LoadingPage(),
    ),
    // GetPage(
    //   name: home,
    //   page: () => HomePage(),
    // ),
    // GetPage(
    //   name: login,
    //   page: () => LoginPage(),
    // ),
    // GetPage(
    //   name: register,
    //   page: () => RegisterPage(),
    // ),
  ];
}
