import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTextFormfiled extends StatelessWidget {
  final String labelt;
  final Icon sufficon;
  final TextEditingController controller;

  const MyTextFormfiled(
      {super.key, required this.labelt, required this.sufficon, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(

      padding: const EdgeInsets.all(12),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
            fillColor: CupertinoColors.white,
            filled: true,
            label: Text(labelt,
              style: TextStyle(
                  fontWeight: FontWeight.w800
              ),),
            suffixIcon: sufficon,
            focusedBorder: _buildOutlineInputBorder(),
            enabledBorder: _buildOutlineInputBorder()
        ),

      ),
    );
  }

  OutlineInputBorder _buildOutlineInputBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide(
            color: Colors.transparent
        )
    );
  }

}
