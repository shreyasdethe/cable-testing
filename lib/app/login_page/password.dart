import 'package:flutter/material.dart';

class Password extends StatefulWidget {
  Password({Key? key}) : super(key: key);

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  late bool _passwordVisible;

  @override
  void initState() {
    super.initState();
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: true,
      keyboardType: TextInputType.text,
      obscureText: !_passwordVisible,
      enableSuggestions: false,
      autocorrect: false,
      maxLines: 1,
      decoration: InputDecoration(
        filled: true,
        isDense: true,
        hintText: "password",
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
        suffixIcon: IconButton(
          icon:
              Icon(_passwordVisible ? Icons.visibility : Icons.visibility_off),
          color: Theme.of(context).primaryColor,
          onPressed: () => {
            setState(() => {_passwordVisible = !_passwordVisible})
          },
        ),
      ),
    );
  }
}
