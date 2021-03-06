import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:starter/locale/app_translation.dart';
import 'package:starter/router/router.dart';

void main() {
  GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        navigatorKey: Get.key,
        translations: AppTranslations(),
        locale: Get.deviceLocale,
        debugShowCheckedModeBanner: false,
        title: 'GetX Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: '/',
        getPages: AppRouter.routes);
  }
}
