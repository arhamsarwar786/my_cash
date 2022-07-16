import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_cash/view/Certification%20center/Basic%20Information/widgets.dart';
import 'package:my_cash/widgets.dart';

import '../../Utils/constant.dart';
import '../../controllers/API_MANGER/api_manager.dart';

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
          SizedBox(
              width: size.width * 0.72,
              child: Text(
                value == 1
                    ? "PENDING"
                    : value == 2
                        ? "APPROVED"
                        : "REJECTED",
                style: TextStyle(
                    color: value == 1
                        ? Colors.amber
                        : value == 2
                            ? Colors.green
                            : Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              )),
        ],
      ),
    );
  }
}

addCNICDialog(BuildContext context) {
  final cnicController = TextEditingController();
  // set up the buttons

  Widget continueButton = MaterialButton(
    color: primayColor,
    child: Text(
      "OK",
      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
    ),
    onPressed: () async {
      if (cnicController.text.isEmpty || cnicController.text.length != 13) {
        snackBar(context, "Enter Valid CNIC");
      } else {
        Navigator.pop(context);

        return await APIManager().getLoadStatus(cnic: cnicController.text);
      }
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text(
      "Enter CNIC",
      style: TextStyle(color: primayColor, fontWeight: FontWeight.bold),
    ),
    content: CustomTextField(
      title: "ENTER 13 DIGITS CNIC",
      controller: cnicController,
      type: TextInputType.number,
    ),
    actions: [
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
