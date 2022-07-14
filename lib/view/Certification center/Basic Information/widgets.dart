// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../Utils/constant.dart';

class CircularNumbering extends StatelessWidget {
  final number;
  CircularNumbering(this.number);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.black54,
      child: Text(
        number,
        style: const TextStyle(
            color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final title,controller;
  CustomTextField({this.controller,this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "$title",
          style: TextStyle(
              color: primayColor, fontSize: 15, fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 5,
        ),
        TextField(
          controller: controller,
          keyboardType: TextInputType.name,
          cursorColor: primayColor,
          autofocus: false,
          decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 15.0, horizontal: 25),
            fillColor: Colors.white,
            filled: true,
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
              borderRadius: BorderRadius.circular(10.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.circular(10.0),
            ),
            disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.circular(10.0),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.circular(10.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.circular(10.0),
            ),
            hintText: "Enter $title",
            hintStyle: TextStyle(color: Colors.black38, fontSize: 16),
          ),
        ),
      ],
    );
  }
}


