import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  final String hintText;
  final bool isDisabled;
  TextInput({Key? key, this.hintText = "", this.isDisabled = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      enabled: !isDisabled,
      autofocus: true,
      keyboardType: TextInputType.text,
      maxLines: 1,
      decoration: InputDecoration(
        filled: true,
        isDense: true,
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.grey,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          borderSide: BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
      ),
    );
  }
}
