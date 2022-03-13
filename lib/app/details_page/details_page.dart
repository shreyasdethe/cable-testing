import 'package:cable_testing/app/choice_page/choice_page.dart';
import 'package:cable_testing/app/details_page/details_field.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  late BuildContext context;
  DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    this.context = context;
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
    double leftMargin = 0.2 * width;
    double rightMargin = 0.2 * width;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            bottom: 5,
            left: leftMargin,
            right: rightMargin,
          ),
          child: Text(
            "Please input the following information",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(0.03 * width),
          margin: EdgeInsets.only(
            left: leftMargin,
            right: rightMargin,
            top: 10,
            bottom: 0,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            color: Colors.grey[100],
          ),
          child: SizedBox(
            height: height * 0.6,
            child: _buildColumnOfItems(width, height),
          ),
        ),
        Container(
          height: 40,
          margin: EdgeInsets.only(
            left: leftMargin,
            top: 10.0,
          ),
          child: ElevatedButton(
            onPressed: _submitDetails,
            child: Text("Submit"),
            style: ElevatedButton.styleFrom(
              fixedSize: Size(100, 40),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildColumnOfItems(double width, double height) {
    double itemWidth = 1.2 * width;
    double itemHeight = 0.5 * (height - 24);

    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 2,
      crossAxisSpacing: 20,
      mainAxisSpacing: 0,
      childAspectRatio: itemWidth / itemHeight,
      children: <Widget>[
        DetailsField(label: "Substation ID"),
        DetailsField(label: "Cable ID"),
        DetailsField(label: "Cable Type"),
        DetailsField(label: "Age"),
        DetailsField(label: "Cable Length"),
        DetailsField(label: "Cable Operating Voltage"),
        DetailsField(label: "Cable Load (%)"),
        DetailsField(label: "Phase"),
        DetailsField(label: "Test Voltage"),
        DetailsField(label: "Temperature (Not implemented)", isDisabled: true),
        DetailsField(label: "Humidity (Not implemented)", isDisabled: true),
        DetailsField(label: "pH (Not implemented)", isDisabled: true),
      ],
    );
  }

  void _submitDetails() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ChoicePage()),
    );
  }
}
