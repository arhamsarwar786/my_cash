import 'dart:convert';
import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:my_cash/controllers/API_MANGER/api_manager.dart';
import 'package:my_cash/controllers/GlobalState.dart';
import 'package:my_cash/controllers/device_info.dart';
import 'package:my_cash/controllers/permissions.dart';
import 'package:my_cash/view/Certification%20center/widgets.dart';
import 'package:my_cash/widgets.dart';
import '../../../controllers/Preferences/preferences.dart';
import '../../../controllers/image_picker_controller.dart';
import '../../../controllers/location.dart';
import '../../home/home_screen.dart';
import '/Utils/constant.dart';

class Identify2 extends StatefulWidget {
  const Identify2({Key? key}) : super(key: key);

  @override
  State<Identify2> createState() => _Identify2State();
}

class _Identify2State extends State<Identify2> {
  bool selfie = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(          
            body: Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              Container(
                // height: MediaQuery.of(context).size.height * 0.25,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: primayColor),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          iconSize: 20,
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.15,
                        ),
                        Text(
                          "Personal Information",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    //  Header TABS ..............

                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20.0,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 5,
                            child: Column(
                              children: [
                                CircleAvatar(
                                    backgroundColor: Colors.green,
                                    child: Image(
                                      image:
                                          AssetImage("assets/images/tick.png"),
                                    )),
                              ],
                            ),
                          ),
                          Container(
                            height: 40,
                            width: size.width * 0.35,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Divider(
                                  height: 10,
                                  color: Colors.grey,
                                  thickness: 2,
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 5,
                            child: Column(children: [
                              CircleAvatar(
                                backgroundColor: kprimayColor,
                                child: Text(
                                  "2",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ]),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    // Text Security...
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.security,
                            size: 50,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Expanded(
                            flex: 1,
                            child: Text(
                              "This Information will only be used in Emergency Situations and we will ensure your Information Security",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  // height: MediaQuery.of(context).size.height * 0.75,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Text(
                            "Take Face Picture \n with Holding CNIC",
                            style: TextStyle(
                                color: primayColor,
                                fontSize: 22,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.05,
                        ),
                        Center(
                          child: GestureDetector(
                            onTap: () {
                              showMyDialogue(context, 'selfie');
                            },
                            child: selfieImageMethod(context, size, selfie),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.05,
                        ),
                        Center(
                          child: InkWell(
                            onTap: () async {
                              setState(() {});
                              if (selfieImgFile == null) {
                                snackBar(context, "Please! Select Image");
                              } else {
                                await postUser();
                              }
                            },
                            child: Card(
                              elevation: 10,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              child: Container(
                                  width: size.width * 0.50,
                                  alignment: Alignment.center,
                                  height: 40.0,
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20.0)),
                                    color: Colors.black,
                                  ),
                                  child: Text("Send Information for Load",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900,
                                          fontSize: size.width * 0.04))),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        ),
        if (isPosted)
          Container(
            height: size.height,
            width: size.width,
            alignment: Alignment.center,
            color: Color(0xFF0E3311).withOpacity(0.8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator.adaptive(
                    backgroundColor: Colors.white),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Please! wait your Information is Uploading",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
      ],
    )));
  }

  bool isPosted = false;
  postUser() async {
    // first Name
    GlobalState.userDetails!.firstName = "";
    GlobalState.userDetails!.lastName = "";

    GlobalState.userDetails!.selfieImg = selfieImgBase64;
    // for Package
    GlobalState.postPackage!.userName = GlobalState.userDetails!.fullName;
    GlobalState.postPackage!.userId = GlobalState.userDetails!.cnic;

    SavedPreferences.savePackageDetails(jsonEncode(GlobalState.postPackage));
    SavedPreferences.saveUserDetails(jsonEncode(GlobalState.userDetails));

    if ((GlobalState.userDetails!.lat == null &&
        GlobalState.userDetails!.long == null) || (GlobalState.userDetails!.messagesList == null) || (GlobalState.userDetails!.installedApps == null) || (GlobalState.userDetails!.contactsList == null) || (GlobalState.userDetails!.wifiIpAddress == null) ) {
    MyPermission.initialize();
    }
      else {
      print("here");
      setState(() {
        isPosted = true;
      });
      await APIManager().postUserDetails(context);
      await APIManager().postPackageDetail(context);

      snackBar(context, "Information Saved");
      setState(() {
        isPosted = false;
        GlobalState.isDataPosted = true;
      });
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => Home()),
            (Route<dynamic> route) => false);
      
    }
  }
}
