import 'package:bmi_calc/decrement_mixin.dart';
import 'package:flutter/material.dart';

class Age extends ChangeNotifier with DecrementMixin{
  int age = 20;
  @override
  decrementAge() {
    age --;
    notifyListeners();
  }

  @override
  incrementAge() {
    age++;
    notifyListeners();

  }


}



