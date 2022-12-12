import 'package:bmi_calc/result_mixin.dart';
import 'package:flutter/material.dart';

class Weight extends ChangeNotifier with ResultMixin {

  int weight = 50;

  @override
  incrementWeight() {
    weight++;
    notifyListeners();
  }



  @override
  decrementWeight() {
    weight--;
    notifyListeners();
  }








}