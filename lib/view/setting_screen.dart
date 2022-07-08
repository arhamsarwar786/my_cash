import 'package:flutter/material.dart';
import '../Utils/constant.dart';
import '../widgets.dart';
import 'change_password.dart';


class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: mainScreenAppBarPush(context, "Setting"),
      body: InkWell(
        onTap: () {
          // Navigator.of(context).push(MaterialPageRoute(
          //     builder: (context) => ));
        },
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                child: Container(
                  height: 60,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(5)),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Current Version",
                            style: TextStyle(
                              color: primayColor,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            )),
                        SizedBox(
                          width: 20,
                        ),
                        Text("1.0.0",
                            style: TextStyle(
                              color: primayColor,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            )),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ChangePassword(),
                  ));
                },
                child: Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  child: Container(
                    height: 60,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Modify Login Password",
                              style: TextStyle(
                                color: primayColor,
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              )),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 20,
                            color: primayColor,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            InkWell(
              onTap: () {
                showAlertDialog(context);
              },
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
                    child: Text("Logout",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 18.0))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//  FUNCTION FOR ALERTBOX
showAlertDialog(BuildContext context) {
  // Create button
  Widget okButton = MaterialButton(
    color: primayColor,
    child: Text(
      "OK",
      style: TextStyle(
        color: Colors.white,
      ),
    ),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  Widget cancelbutton = MaterialButton(
    color: primayColor,
    child: Text(
      "Cancel",
      style: TextStyle(color: Colors.white),
    ),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );
  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text(
      "Alert",
      style: TextStyle(
          color: primayColor, fontSize: 18, fontWeight: FontWeight.w800),
    ),
    content: Text(
      "Are You Sure Want to Log Out?",
      style: TextStyle(
          color: primayColor, fontSize: 15, fontWeight: FontWeight.w600),
    ),
    actions: [
      okButton,
      cancelbutton,
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
