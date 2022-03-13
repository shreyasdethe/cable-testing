import 'package:cable_testing/app/general/text_input.dart';
import 'package:flutter/material.dart';

class DetailsField extends StatelessWidget {
  final String label;
  final bool isDisabled;
  DetailsField({Key? key, this.label = "", this.isDisabled = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(label, style: TextStyle(fontSize: 14)),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: TextInput(isDisabled: isDisabled),
        ),
      ],
    );
  }
}
