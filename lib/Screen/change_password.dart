import 'package:flutter/material.dart';

import '../Utils/constant.dart';
import '../widgets.dart';


class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainScreenAppBarPush(context, "Change Password"),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Text("Old Password",
                style: TextStyle(
                  color: primayColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                )),
            SizedBox(
              height: 10,
            ),
            TextField(
              // controller: text,
              keyboardType: TextInputType.name,
              cursorColor: primayColor,
              autofocus: false,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
                fillColor: Colors.white,
                filled: true,
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                hintText: "enter old  password",
                hintStyle: TextStyle(color: Colors.black38, fontSize: 16),
                prefixIcon: Icon(
                  Icons.lock,
                  color: primayColor,
                ),
              ),
            ),

            SizedBox(
              height: 10,
            ),
            Text("NewPassword",
                style: TextStyle(
                  color: primayColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                )),
// NEW PASSWORD
            SizedBox(
              height: 10,
            ),
            TextField(
              // controller: text,
              keyboardType: TextInputType.name,
              cursorColor: primayColor,
              autofocus: false,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
                fillColor: Colors.white,
                filled: true,
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                hintText: "enter new password",
                hintStyle: TextStyle(color: Colors.black38, fontSize: 16),
                prefixIcon: Icon(
                  Icons.lock,
                  color: primayColor,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text("Recent New Password",
                style: TextStyle(
                  color: primayColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                )),
            SizedBox(
              height: 10,
            ),
            TextField(
              // controller: text,
              keyboardType: TextInputType.name,
              cursorColor: primayColor,
              autofocus: false,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
                fillColor: Colors.white,
                filled: true,
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                hintText: "again new  password",
                hintStyle: TextStyle(color: Colors.black38, fontSize: 16),
                prefixIcon: Icon(
                  Icons.lock,
                  color: primayColor,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: InkWell(
                onTap: () {},
                child: Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width * 0.70,
                      height: 40.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        gradient: LinearGradient(colors: [
                          primayColor,
                          primayColor,
                        ]),
                      ),
                      child: Text("Sure",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 18.0))),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
