import 'package:cable_testing/app/basic_test/basic_test.dart';
import 'package:cable_testing/app/choice_page/choice_button.dart';
import 'package:cable_testing/app/comp_test/comp_test.dart';
import 'package:cable_testing/app/login_page/login_page.dart';
import 'package:flutter/material.dart';

class ChoicePage extends StatefulWidget {
  late BuildContext context;
  ChoicePage({Key? key}) : super(key: key);

  @override
  State<ChoicePage> createState() => _ChoicePageState();
}

class _ChoicePageState extends State<ChoicePage> {
  bool csvUploaded = false;
  String uploadButtonText = "Upload";
  String infoText = "CSV file not uploaded";
  Color infoTextColor = Colors.red;

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
              bottom: 0.1 * height),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            color: Colors.grey[100],
          ),
          child: SizedBox(
            height: height * 0.5,
            child: _buildColumnOfItems(width, height),
          ),
        ),
      ],
    );
  }

  Widget _buildColumnOfItems(double width, double height) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Please upload your CSV file here:"),
            ElevatedButton(
              onPressed: _onUploadButtonClicked,
              child: Text(uploadButtonText),
            ),
          ],
        ),
        SizedBox(
          height: 40.0,
          child: Text(
            infoText,
            style: TextStyle(
              color: infoTextColor,
            ),
          ),
        ),
        SizedBox(
          width: 10.0,
          height: 25.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ChoiceButton(
              buttonText: "Cable Basic Test",
              callbackFunction: _onBasicTestButtonClicked,
            ),
            ChoiceButton(
              buttonText: "Cable Comprehensive Test",
              callbackFunction: _onCompTestButtonClicked,
            ),
          ],
        ),
        SizedBox(
          width: 10.0,
          height: 25.0,
        ),
        SizedBox(
          height: 40.0,
          child: Text(
            "Note: Cable Basic Test will be done using Insulation Resistance, Polarization Index & Dielectric Absorption Ratio.",
            style: TextStyle(
              color: Colors.pinkAccent,
            ),
          ),
        ),
      ],
    );
  }

  void _onUploadButtonClicked() {
    // TODO:
    // 1. CSV Upload implementation
    // 2. change infoText to "Successfully uploaded", append CSV file name
    // 3. change infoTextColor to Colors.greenAccent
    // 4. change button text "Upload" to "Replace"
    setState(() {
      if (csvUploaded == false) {
        csvUploaded = true;
        uploadButtonText = "Replace";
        infoText = "Successfully uploaded CSV";
        infoTextColor = Colors.greenAccent;
      }
    });
  }

  void _onBasicTestButtonClicked() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => BasicTest()),
    );
  }

  void _onCompTestButtonClicked() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => CompTest()),
    );
  }
}
