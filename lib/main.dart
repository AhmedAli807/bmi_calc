import 'package:bmi_calc/age.dart';
import 'package:bmi_calc/weight.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'bmi_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context){
          return Weight();
        }),
        ChangeNotifierProvider(create: (context){
          return Age();
        })
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Home()
      ),
    );
  }
}

