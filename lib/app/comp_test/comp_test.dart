import 'package:cable_testing/app/general/global_constants.dart';
import 'package:cable_testing/app/general/result_box.dart';
import 'package:flutter/material.dart';

class CompTest extends StatelessWidget {
  const CompTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Cable Testing"),
        elevation: 5.0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: <Color>[Colors.redAccent, Colors.blueAccent]),
          ),
        ),
      ),
      body: _buildCenterBox(width, height),
    );
  }

  Widget _buildCenterBox(double width, double height) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(horizontal: 0.1 * width),
          margin: EdgeInsets.only(
              left: 0.15 * width,
              right: 0.15 * width,
              top: 0.0,
              bottom: 0.01 * height),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            color: Colors.grey[100],
          ),
          child: SizedBox(
            height: height * 0.9,
            child: _buildColumnOfItems(width, height),
          ),
        ),
      ],
    );
  }

  Widget _buildColumnOfItems(double width, double height) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 24.0,
          right: 24.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 16.0),
            SizedBox(
              height: 40.0,
              child: Text(
                "Cable Comprehensive Test",
                style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Text("Here are your results!"),
            SizedBox(height: 24.0),
            ResultBox(
              resultName: "Insulation Resistance",
              resultValue: "1 M",
              results: TestResults(result: TestResult.bad),
            ),
            ResultBox(
                resultName: "Polarization Index",
                resultValue: "2",
                results: TestResults(result: TestResult.good)),
            ResultBox(
                resultName: "Dielectric Absorption Ratio",
                resultValue: "1.25",
                results: TestResults(result: TestResult.good)),
            ResultBox(
                resultName: "Water Tree Detection",
                resultValue: "Yes",
                results: TestResults(result: TestResult.excellent)),
            ResultBox(
                resultName: "Dielectric Loss (tanδ)",
                resultValue: "test",
                results: TestResults(result: TestResult.bad)),
            ResultBox(
                resultName: "Carbonyl Index",
                resultValue: "test",
                results: TestResults(result: TestResult.bad)),
            ResultBox(
                resultName: "Hydroxyl Index",
                resultValue: "test",
                results: TestResults(result: TestResult.bad)),
            ResultBoxSlider(
              resultName: "Aging Factor",
              resultValue: "65%",
              results: TestResults(result: TestResult.good),
              agingFactor: 65,
            ),
            SizedBox(
              height: 16.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Recommendation: "),
                Text(
                  "Unhealthy - Replacement Required",
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.redAccent,
                  ),
                ),
              ],
            ),
            SizedBox(height: 24.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: 10),
                SizedBox(
                  height: 40.0,
                  child: ElevatedButton(
                      onPressed: () {}, child: Text("Save Results")),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
