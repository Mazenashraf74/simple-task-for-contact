import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  final String buttonName;
  final Color mycolor;
  final Function onClic;

  Mybutton(
      {super.key,
      required this.buttonName,
      required this.mycolor,
      required this.onClic});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {
          onClic();
        },
        child: Text(buttonName),
        style: ElevatedButton.styleFrom(
            backgroundColor: mycolor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
      ),
    );
  }
}
