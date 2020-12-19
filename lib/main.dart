import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './app/theme/app_theme.dart';
import 'app/routes/app_pages.dart';
import 'app/routes/routes.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.BOLETO,
      theme: appThemeData,
      defaultTransition: Transition.fade,
      getPages: AppPages.pages,
    ),
  );
}
