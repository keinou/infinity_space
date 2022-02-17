import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:infinity_space/controller/loading.controller.dart';

class LoadingPage extends GetView {
  final ct = Get.put(LoadController());

  LoadingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: GetBuilder(
      init: LoadController(),
      builder: (LoadController ct) => Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            ct.msgLoad,
          )
        ],
      ),
    )));
  }
}
