import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Dialog",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dialog"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    //Get.defaultDialog();
                    Get.defaultDialog(
                      title: "Error",
                      titleStyle: TextStyle(
                        fontSize: 20,
                      ),
                      middleText: "Some thing wrong with this app",
                      middleTextStyle:
                          TextStyle(fontSize: 15, color: Colors.red),
                      //backgroundColor: Colors.amber,
                      radius: 20,
                      onCancel: () {},
                      textCancel: "Cencle",
                      onConfirm: () {},
                      textConfirm: "Ok",
                      onCustom: () {},
                    );
                  },
                  child: Text("Show Dialog"))
            ],
          ),
        ),
      ),
    );
  }
}
