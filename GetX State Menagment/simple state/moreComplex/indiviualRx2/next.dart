import 'package:get/get.dart';
import 'package:splash/pagetwo.dart';

class MyController extends GetxController {
  var myShop = Shop();

  void convertToUpper() {
    myShop.productname.value = myShop.productname.value.toUpperCase();
  }

  void convertoLowerCase() {
    myShop.productname.value = myShop.productname.value.toLowerCase();
  }
}
