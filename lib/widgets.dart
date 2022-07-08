import 'package:flutter/material.dart';

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
    duration: Duration(milliseconds: 300),
  ));
}
