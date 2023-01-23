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
      title: "SnackBar",
      home: Scaffold(
        appBar: AppBar(
          title: Text("SnackBar"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Get.snackbar(
                      "1 New Message", "hamid send a friend request",
                      colorText: Colors.white,
                      snackPosition: SnackPosition.TOP,
                      //backgroundColor: Colors.black,
                      borderRadius: 30,
                      //padding: EdgeInsets.all(20),
                      //margin: EdgeInsets.all(20),
                      //maxWidth: 100,
                      //animationDuration: Duration(seconds: 5)
                      // backgroundGradient:
                      //     LinearGradient(colors: [Colors.red, Colors.green]),
                      //borderColor: Colors.amber,
                      //borderWidth: 5,

                      //isDismissible: true,
                      showProgressIndicator: true,
                      icon: Icon(
                        Icons.message,
                        color: Colors.black,
                      ),
                      onTap: (snack) {
                        print("Print SnackBar");
                      },
                      snackbarStatus: (status) {
                        print(status);
                      },
                    );
                  },
                  child: Text("Show SnakBar")),
            ],
          ),
        ),
      ),
    );
  }
}
