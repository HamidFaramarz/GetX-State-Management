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
  var student1 = Student();

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
                  "His is ${student1.name.value} / ${student1.lastname.value}"),
            ),
            ElevatedButton(
                onPressed: () {
                  student1.name.value = student1.name.value.toUpperCase();
                  student1.name.value = student1.lastname.value.toLowerCase();
                },
                child: Text("Uppercase Names/Last names")),
          ],
        ),
      ),
    );
  }
}
