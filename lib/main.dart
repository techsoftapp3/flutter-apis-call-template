import 'package:api_tools_test/injectable.dart';
import 'package:api_tools_test/model/data/remote/dio/dio_remote.dart';
import 'package:api_tools_test/model/models/post_model.dart';
import 'package:api_tools_test/model/services/retrofit_services.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              onPressed: () async {
                final instance = getIt<ExampleModel1Remote>();
                final response = await instance.getExampleModel1(
                  checksum: "411EAA11614A0EE904CC77D62CFF1DF0",
                  customerPhoneLogin: "0",
                  deivceOs: "2",
                  idCustomer: "0",
                  idCustomerLogin: "0",
                  idDistrictLogin: "",
                  idLanguage: "0",
                  lastTime: "0",
                  versionApp: "4.0.21",
                  idSession: "2831280",
                );
                print(response.toJson());
              },
              child: Text(
                'Retrofit',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            TextButton(
              onPressed: () async {
                final instance = getIt<ExampleModel2Remote>();
                final response = await instance.getExample2(
                    "getHomeInfo?checksum=CD04B62D281F6A858E7EF850C2E146F2&customer_phone_login=0&device_os=2&id_customer=0&id_customer_login=0&id_district_login=&id_language=0&id_session=2602223&lasttime=0&version_app=4.0.21");
                print(response.toJson());
              },
              child: Text(
                'Retrofit2',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            TextButton(
              onPressed: () async {
                final instance = getIt<PostRemote>();
                final response = await instance.getPostById(2);
                print(response.toJson());
              },
              child: Text(
                'Get',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            TextButton(
              onPressed: () async {
                final instance = getIt<PostRemote>();
                final response = await instance.getPosts();
                for (final element in response) {
                  print("\n");
                  print(element.toJson());
                }
              },
              child: Text(
                'GetList',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            TextButton(
              onPressed: () async {
                final instance = getIt<PostRemote>();
                await instance
                    .addPost(PostModel.fromJson(
                      <String, dynamic>{
                        "title": 'foo',
                        "body": 'bar',
                        "userId": 1,
                      },
                    ))
                    .then((value) => print(value.toJson()));
              },
              child: Text(
                'Post',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            TextButton(
              onPressed: () async {
                final instance = getIt<PostRemote>();
                await instance
                    .updatePost(
                        PostModel.fromJson(
                          <String, dynamic>{
                            "id": 2,
                            "title": 'Cabv',
                            "body": "dadasdasdasd",
                            "userId": 2,
                          },
                        ),
                        1)
                    .then((value) => print(value.toJson()));
              },
              child: Text(
                'Put',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            TextButton(
              onPressed: () async {
                final instance = getIt<PostRemote>();
                await instance
                    .deletePost(2)
                    .then((value) => print(value.toJson()));
              },
              child: Text(
                'Delete',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            TextButton(
              onPressed: () async {
                final instance = getIt<PostRemote>();
                final value = await instance.filterByUserId(2);
                value.forEach((element) {
                  print(element.toJson());
                });
              },
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
