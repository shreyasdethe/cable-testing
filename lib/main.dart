import 'package:cable_testing/app/basic_test/basic_test.dart';
import 'package:cable_testing/app/choice_page/choice_page.dart';
import 'package:cable_testing/app/comp_test/comp_test.dart';
import 'package:cable_testing/app/login_page/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CableTest());
}

class CableTest extends StatelessWidget {
  const CableTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cable Testing',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: LoginPage(),
    );
  }
}
