import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class Next extends StatefulWidget {
  const Next({super.key});

  @override
  State<Next> createState() => _NextState();
}

class _NextState extends State<Next> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Next"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${Get.arguments}"),
            // ElevatedButton(
            //     onPressed: () {
            //       Get.back();
            //     },
            //     child: Text("Go Back"))

            // you can see the output on the console
            ElevatedButton(
                onPressed: () {
                  Get.back(result: "this is data from next screen");
                },
                child: Text("Go Back"))
          ],
        ),
      ),
    );
  }
}
