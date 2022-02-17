import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:infinity_space/controller/home.controller.dart';
import 'package:niku/niku.dart';

extension StringE on String {
  NikuText get text => NikuText(this);
}

extension ListE on List<Widget> {
  NikuColumn get column => NikuColumn(this);
  NikuRow get row => NikuRow(this);
  NikuWrap get wrap => NikuWrap(this);
}

class HomeView extends GetView {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (ct) => Scaffold(
        body: Center(child: Niku()),
      ),
    );
  }
}
