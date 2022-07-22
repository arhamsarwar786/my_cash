import 'package:flutter/material.dart';
import 'package:my_cash/Utils/constant.dart';

showAlertDialog(BuildContext context) {
  // set up the buttons

  Widget continueButton = MaterialButton(
    color: primayColor,
    child: Text(
      "OK",
      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
    ),
    onPressed: () {
      Navigator.pop(context);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text(
      "Not Eligible?",
      style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
    ),
    content: Text("Your CNIC already Registered!"),
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

DateTime selectedDate = DateTime.now();

selectDate(BuildContext context) async {
  final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime(1980, 1),
      firstDate: DateTime(1950, 1),
      lastDate: DateTime(2002));
  if (picked != null) {
    selectedDate = picked;
    return selectedDate;
  }
}
