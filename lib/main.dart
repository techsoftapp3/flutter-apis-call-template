import 'package:api_tools_test/core/config/injectable.dart';
import 'package:api_tools_test/core/config/page_config.dart';
import 'package:api_tools_test/model/entities/post_model.dart';
import 'package:api_tools_test/view_model/post_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: PageName.homePage,
      getPages: PageConfig.getPages,
    );
  }
}
