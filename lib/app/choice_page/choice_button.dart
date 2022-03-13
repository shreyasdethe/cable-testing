import 'package:flutter/material.dart';

class ChoiceButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback callbackFunction;
  const ChoiceButton({
    Key? key,
    required this.buttonText,
    required this.callbackFunction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return SizedBox(
      width: width * 0.2,
      height: height * 0.15,
      child: ElevatedButton(
        onPressed: callbackFunction,
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
