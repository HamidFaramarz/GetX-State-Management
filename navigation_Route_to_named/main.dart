import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:splash/next.dart';
import 'package:splash/pagetwo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // to whicever page you want, you can go there......
      initialRoute: "/",
      defaultTransition: Transition.zoom,
      getPages: [
        GetPage(
          name: '/',
          page: () => MyApp(),
        ),
        GetPage(
          name: '/next',
          page: () => Next(),
        ),
        GetPage(
          name: "/pagetwo",
          page: () => PageTwo(),
        ),
      ],
      title: "Text",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.toNamed("/next");
                },
                child: Text("go To Next Page")),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed("/pagetwo");
                },
                child: Text("Page Two"))
          ],
        ),
      ),
    );
  }
}
