import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:splash/next.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
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
        title: Text("Simple data"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () async {
                  // Get.to(
                  //   Next(),
                  //   // this comment change as full screen dialog
                  //   //fullscreenDialog: true,

                  //   // Provide some transiation
                  //   // transition: Transition.zoom,
                  //   // duration: Duration(seconds: 2),
                  // );
                  // More attributes
                  // if you want to go to next page but should not be able to come back
                  //Get.off(Next());
                  // go to next screen and cancel all routs and screens.
                  //Get.offAll(Next());

                  // go next screen with some data.
                  // Get.to(Next(), arguments: "Data from main screen");

                  // if data come from the other page .....
                  var data = await Get.to(Next());
                  print("The recived data : $data");
                },
                child: Text("Go to Next")),
          ],
        ),
      ),
    );
  }
}
