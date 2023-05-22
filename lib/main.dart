import 'package:api_tools_test/config/injectable.dart';
import 'package:api_tools_test/model/entities/post_model.dart';
import 'package:api_tools_test/config/page_config.dart';
import 'package:api_tools_test/view_model/controller.dart';
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
      initialRoute: PageName.catPage,
      getPages: PageConfig.getPages,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends GetView<MyController> {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // TextButton(
            //   onPressed: () async {
            //     final instance = getIt<ExampleModel1Remote>();
            //     final response = await instance.getExampleModel1(
            //       checksum: "411EAA11614A0EE904CC77D62CFF1DF0",
            //       customerPhoneLogin: "0",
            //       deivceOs: "2",
            //       idCustomer: "0",
            //       idCustomerLogin: "0",
            //       idDistrictLogin: "",
            //       idLanguage: "0",
            //       lastTime: "0",
            //       versionApp: "4.0.21",
            //       idSession: "2831280",
            //     );
            //     print(response.toJson());
            //   },
            //   child: Text(
            //     'Retrofit',
            //     style: Theme.of(context).textTheme.headline4,
            //   ),
            // ),
            // TextButton(
            //   onPressed: () async {
            //     final instance = getIt<ExampleModel2Remote>();
            //     final response = await instance.getExample2(
            //         "getHomeInfo?checksum=CD04B62D281F6A858E7EF850C2E146F2&customer_phone_login=0&device_os=2&id_customer=0&id_customer_login=0&id_district_login=&id_language=0&id_session=2602223&lasttime=0&version_app=4.0.21");
            //     print(response.toJson());
            //   },
            //   child: Text(
            //     'Retrofit2',
            //     style: Theme.of(context).textTheme.headline4,
            //   ),
            // ),
            TextButton(
              onPressed: () async {
                controller.getPostById(102);
              },
              child: Text(
                'Get',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            TextButton(
              onPressed: () async => controller.getPosts(),
              child: Text(
                'GetList',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            TextButton(
              onPressed: () async => controller.addPost(Post.fromJson(
                <String, dynamic>{
                  "id": 102,
                  "title": 'Duc',
                  "body": 'Le',
                  "userId": 102,
                },
              )),
              child: Text(
                'Post',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            TextButton(
              onPressed: () async => controller.updatePost(
                  post: Post.fromJson(
                    <String, dynamic>{
                      "id": 1,
                      "title": 'Le Minh Dang',
                      "body": "trying to be better",
                      "userId": 100,
                    },
                  ),
                  index: 1),
              child: Text(
                'Put',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            TextButton(
              onPressed: () async => controller.deletePost(102),
              child: Text(
                'Delete',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            TextButton(
              onPressed: () async => controller.filterPostsById(2),
              child: Text(
                'Filter',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
