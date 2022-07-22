import 'package:flutter/material.dart';
import 'package:my_cash/controllers/GlobalState.dart';
import 'Utils/constant.dart';

mainScreenAppBarPush(BuildContext context, String title) {
  return AppBar(
    elevation: 0,
    backgroundColor: kprimayColor,
    leading: IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      iconSize: 25,
      color: primayColor,
      icon: const Icon(Icons.arrow_back),
    ),
    centerTitle: true,
    title: Text(
      title,
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w800,
        color: primayColor,
      ),
    ),
  );
}

Widget bgImage(BuildContext context, Size size) {
  return Container(
    decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              'assets/images/bgimage.png',
            ),
            fit: BoxFit.fill)),
  );
}

snackBar(context, text) {
  return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(text),
    duration: const Duration(milliseconds: 500),
  ));
}

showAlert(BuildContext context, {@required title,@required content,@required type}) {
  Widget continueButton = MaterialButton(
    color: type == "error" ? Colors.red : Colors.green,
    child: Text(
      "OK",
      style: TextStyle(color: Colors.white),
    ),
    onPressed: () {
      if(type == "success"){
        GlobalState.isDataPosted = false;
      }
      Navigator.pop(context);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text(
      title,
      style: TextStyle(
          color: type == "error" ? Colors.red : Colors.green,
          fontSize: 30,
          fontWeight: FontWeight.bold),
    ),
    content: Text('$content'),
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
