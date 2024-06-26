import 'package:flutter/foundation.dart';

class DaftarKosDetailProvider with ChangeNotifier {
  String phoneNumber = "+6282190637426";

  void updatePhoneNumber(String newPhoneNumber) {
    phoneNumber = newPhoneNumber;
    notifyListeners();
  }
}