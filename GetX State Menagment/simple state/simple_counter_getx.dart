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
  var count = 0.obs;
  var dcount = 0.obs;

  void increment() {
    count++;
  }

  void decrement() {
    dcount--;
  }

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
            Obx(() => Text("The incrment value is : $count")),
            ElevatedButton(
                onPressed: () {
                  increment();
                },
                child: Text("Increment")),
            ElevatedButton(
                onPressed: () {
                  decrement();
                },
                child: Text("Decrement")),
            Obx(
              () => Text("Derement value is: $dcount"),
            ),
          ],
        ),
      ),
    );
  }
}
