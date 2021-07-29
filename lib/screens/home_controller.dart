import 'package:flutter/cupertino.dart';

class HomeController with ChangeNotifier {
  String country = 'Brazil';

  DateTime dateTimeNow = DateTime.now();
  DateTime updatedDate = DateTime.now();

  void updateCountry(newCountry) {
    country = newCountry;
    notifyListeners();
  }
}
