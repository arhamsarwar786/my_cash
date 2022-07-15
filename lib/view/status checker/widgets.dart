import 'dart:ui';

import 'package:flutter/material.dart';

class RowShow extends StatelessWidget {
  final title, value;
  RowShow({this.title, this.value});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
              width: size.width * 0.20,
              child: Text(
                "$title: ",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
          SizedBox(width: size.width * 0.72, child: Text(value)),
        ],
      ),
    );
  }
}




class StatusViewer extends StatelessWidget {
  final title, value;
  StatusViewer({this.title, this.value});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
              width: size.width * 0.20,
              child: Text(
                "$title: ",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
          SizedBox(width: size.width * 0.72, child: Text(value == 1 ? "PENDING" : value == 2 ?  "APPROVED": "REJECTED" ,style: TextStyle( color: value == 1 ? Colors.amber : value == 2 ? Colors.green: Colors.red, fontWeight: FontWeight.bold,fontSize: 25 ),)),
        ],
      ),
    );
  }
}
