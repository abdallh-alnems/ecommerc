import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'core/constant/routes/get_page.dart';
import 'core/localization/changelocal.dart';
import 'core/localization/translation.dart';
import 'core/services/services.dart';
import 'logic/bindings/intial_bindings.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ecommerc',
      theme: controller.appTheme,
      translations: MyTranslation(),
      locale: controller.language,
      initialBinding: InitialBindings(),
      getPages: routes,
    );
  }
}
