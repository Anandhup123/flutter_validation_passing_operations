import 'package:flutter/material.dart';
import 'package:formvalidation/home.dart';
import 'package:formvalidation/page1.dart';
import 'package:formvalidation/page2.dart';
import 'package:formvalidation/page4.dart';
import 'package:formvalidation/page5.dart';
import 'package:formvalidation/page6.dart';

main() {
  runApp(app());
}

class app extends StatelessWidget {
  const app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'page1': (context) => page1(),
        'page2': (context) => page2(),
        'page4': (context) => page4(),
        'page5': (context) => page5(),
        'page6': (context) => page6(),
      },
      debugShowCheckedModeBanner: false,
      home: homepage(),
    );
  }
}
