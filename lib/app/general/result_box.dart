import 'package:flutter/material.dart';
import 'package:cable_testing/app/general/global_constants.dart';

class ResultBox extends StatelessWidget {
  final String resultName;
  final String resultValue;
  final TestResults results;
  const ResultBox(
      {Key? key,
      required this.resultName,
      required this.resultValue,
      required this.results})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        color: results.color,
      ),
      margin: EdgeInsets.only(
        top: 4.0,
        bottom: 4.0,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                child: Text(
                  resultName,
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
              Text(
                resultValue,
                style: TextStyle(fontSize: 20.0),
              ),
              Text("Result: " + results.resultText),
            ],
          ),
        ),
      ),
    );
  }
}

class ResultBoxSlider extends StatelessWidget {
  final String resultName;
  final String resultValue;
  final TestResults results;
  final int agingFactor;

  const ResultBoxSlider({
    Key? key,
    required this.resultName,
    required this.resultValue,
    required this.results,
    required this.agingFactor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: <Color>[results.color, Colors.white],
            stops: [0.0, agingFactor.toDouble() / 100.0]),
      ),
      margin: EdgeInsets.only(
        top: 4.0,
        bottom: 4.0,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                child: Text(
                  resultName,
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
              Text(
                resultValue,
                style: TextStyle(fontSize: 20.0),
              ),
              Text("Result: " + results.resultText),
            ],
          ),
        ),
      ),
    );
  }
}
