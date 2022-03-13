import 'package:flutter/material.dart';

enum TestResult { excellent, good, bad }

class TestResults {
  final TestResult result;
  Color color = Colors.lightBlueAccent;
  String resultText = "Error";

  TestResults({required this.result}) {
    switch (result) {
      case TestResult.excellent:
        color = Colors.greenAccent;
        resultText = "Excellent";
        break;
      case TestResult.good:
        color = Colors.amberAccent;
        resultText = "Good";
        break;
      case TestResult.bad:
        color = Colors.redAccent;
        resultText = "Bad";
        break;
      default:
        break;
    }
  }
}
