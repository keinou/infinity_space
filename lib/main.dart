import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:infinity_space/config/app.routes.dart';
import 'package:infinity_space/config/app.theme.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(const InfinitySpace());
}

class InfinitySpace extends StatelessWidget {
  const InfinitySpace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Infity Space',
      theme: AppTheme.tema,
      initialRoute: AppRoutes.home,
      getPages: AppRoutes.rotas,
    );
  }
}
