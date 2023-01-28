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
                    final one = Get.changeTheme(ThemeData.dark());
                    return one;
                  },
                  child: Text("Dark Mode")),
              ElevatedButton(
                  onPressed: () {
                    Get.changeTheme(ThemeData.light());
                  },
                  child: Text("Light Mode")),
              ElevatedButton(
                  onPressed: () {
                    Get.bottomSheet(
                      Container(
                        child: Wrap(
                          children: [
                            ListTile(
                              leading: Icon(Icons.wb_sunny_outlined),
                              title: Text("Light Theme"),
                              onTap: () {
                                Get.changeTheme(ThemeData.light());
                              },
                            ),
                            ListTile(
                              leading: Icon(Icons.wb_sunny),
                              title: Text("Dark Mode"),
                              onTap: () {
                                Get.changeTheme(ThemeData.dark());
                              },
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  child: Text("Click"))
            ],
          ),
        ),
      ),
    );
  }
}
