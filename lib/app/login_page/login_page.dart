import 'package:cable_testing/app/details_page/details_page.dart';
import 'package:cable_testing/app/general/text_input.dart';
import 'package:cable_testing/app/login_page/password.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  late BuildContext context;
  LoginPage({Key? key}) : super(key: key);

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
              left: 0.25 * width,
              right: 0.25 * width,
              top: 0.0,
              bottom: 0.1 * height),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            color: Colors.grey[100],
          ),
          child: SizedBox(
            height: height * 0.5,
            child: _buildColumnOfItems(),
          ),
        ),
      ],
    );
  }

  Widget _buildColumnOfItems() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(bottom: 5.0),
          child: Text("username"),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 15.0),
          child: TextInput(hintText: "username@example.com"),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 5.0),
          child: Text("password"),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 15.0),
          child: Password(),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 5.0),
          child: SizedBox(
            height: 40.0,
            child: ElevatedButton(
              onPressed: _loginWithUsernameAndPassword,
              child: Text("Login"),
            ),
          ),
        ),
        SizedBox(
          height: 40.0,
          child: ElevatedButton(
              onPressed: _resetPassword,
              child: Text("Reset"),
              style: ElevatedButton.styleFrom(
                primary: Colors.grey,
              )),
        )
      ],
    );
  }

  void _loginWithUsernameAndPassword() {
    // TODO: implement login functionality

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DetailsPage()),
    );
  }

  void _resetPassword() {
    // TODO: implement reset password functionality
  }
}
