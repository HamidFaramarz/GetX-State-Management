// ignore_for_file: empty_constructor_bodies

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
      // to whicever page you want, you can go there.....
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
  MyController myController = Get.put(MyController());

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
            Obx(
              () => Text(
                  "My product name is : ${myController.myShop.productname}"),
            ),
            ElevatedButton(
                onPressed: () {
                  myController.convertToUpper();
                },
                child: Text("Convert to Upper")),
            Text("____________________________________"),
            ElevatedButton(
                onPressed: () {
                  myController.convertoLowerCase();
                },
                child: Text("Convert to Upper")),
          ],
        ),
      ),
    );
  }
}
