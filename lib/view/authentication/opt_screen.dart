import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:my_cash/Utils/constant.dart';
import 'package:my_cash/controllers/GlobalState.dart';
import 'package:my_cash/controllers/Preferences/preferences.dart';
import 'package:my_cash/models/userDetailModel.dart';
import 'package:my_cash/widgets.dart';

import '../../controllers/API_MANGER/api_manager.dart';
import '../../controllers/firebaseAuth.dart';
import '../../controllers/saving_user_details.dart';
import '../home/home_screen.dart';

class OtpScreen extends StatefulWidget {
  final phoneNumber;
  OtpScreen({this.phoneNumber});

  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final codeDigit1 = TextEditingController();
  final codeDigit2 = TextEditingController();
  final codeDigit3 = TextEditingController();
  final codeDigit4 = TextEditingController();
  final codeDigit5 = TextEditingController();
  final codeDigit6 = TextEditingController();

  @override
  void initState() {
    registerUser(context, widget.phoneNumber);
    super.initState();
  }

  String? smsCode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xfff7f6fb),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 24, horizontal: 10),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Icon(
                    Icons.arrow_back,
                    size: 32,
                    color: Colors.black54,
                  ),
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.amber.shade50,
                  shape: BoxShape.circle,
                ),
                // child: Image.asset(
                //   'assets/images/illustration-3.png',
                // ),
              ),
              SizedBox(
                height: 10,
              ),
              Text("+92${widget.phoneNumber}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              SizedBox(
                height: 10,
              ),
              Text(
                'Verification',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Enter your OTP code number",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 28,
              ),
              Container(
                padding: EdgeInsets.all(28),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _textFieldOTP(
                            first: true, last: false, controller: codeDigit1),
                        _textFieldOTP(
                            first: false, last: false, controller: codeDigit2),
                        _textFieldOTP(
                            first: false, last: false, controller: codeDigit3),
                        _textFieldOTP(
                            first: false, last: false, controller: codeDigit4),
                        _textFieldOTP(
                            first: false, last: false, controller: codeDigit5),
                        _textFieldOTP(
                            first: false, last: true, controller: codeDigit6),
                      ],
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    // SizedBox(
                    //   width: double.infinity,
                    //   child: ElevatedButton(
                    //     onPressed: () async {

                    //     },
                    //     style: ButtonStyle(
                    //       foregroundColor:
                    //           MaterialStateProperty.all<Color>(Colors.white),
                    //       backgroundColor:
                    //           MaterialStateProperty.all<Color>(primayColor),
                    //       shape:
                    //           MaterialStateProperty.all<RoundedRectangleBorder>(
                    //         RoundedRectangleBorder(
                    //           borderRadius: BorderRadius.circular(24.0),
                    //         ),
                    //       ),
                    //     ),
                    //     child: Padding(
                    //       padding: EdgeInsets.all(14.0),
                    //       child: Text(
                    //         'Verify',
                    //         style: TextStyle(fontSize: 16),
                    //       ),
                    //     ),
                    //   ),
                    // )
                  ],
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Text(
                "Didn't you receive any code?",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 18,
              ),
              InkWell(
                onTap: () {
                  snackBar(context, "Resending New OTP");
                  registerUser(context, widget.phoneNumber);
                },
                child: Text(
                  "Resend New Code",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: kprimayColor,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _textFieldOTP({bool? first, last, controller}) {
    return Container(
      height: 70,
      child: AspectRatio(
        aspectRatio: 0.6,
        child: TextField(
          controller: controller,
          autofocus: true,
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.length == 0 && first == false) {
              FocusScope.of(context).previousFocus();
            }
            if (last == true) {
              smsCode =
                  "${codeDigit1.text}${codeDigit2.text}${codeDigit3.text}${codeDigit4.text}${codeDigit5.text}${codeDigit6.text}";
     
              auth
                  .signInWithCredential(PhoneAuthProvider.credential(
                      verificationId: _verificationId!, smsCode: smsCode!))
                  .then((value) {
                if (value.user != null) {
                    saveUserGlobally();                  
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));

                  //  fetchUserDetails(number: widget.phoneNumber);
                }
              }).catchError((e) {
                snackBar(context, "Invalid OTP");
              });
            }
          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            counter: Offstage(),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: kprimayColor),
                borderRadius: BorderRadius.circular(12)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: primayColor),
                borderRadius: BorderRadius.circular(12)),
          ),
        ),
      ),
    );
  }

  String? _verificationId;

  registerUser(context, phoneNumber) {
    auth.verifyPhoneNumber(
        phoneNumber: "+92$phoneNumber",
        verificationCompleted: (PhoneAuthCredential credential) {
          auth.signInWithCredential(credential).then(
            (UserCredential result) {
              if (result.user != null) {
                print(
                    "Veritcation Complete %%%%%%%%%%%%%%%%%%% ${result.user}");

                // Navigator.push(
                //     context, MaterialPageRoute(builder: (context) => Home()));
              }
            },
          );
        },
        verificationFailed: (e) {
          print(e.message);
          snackBar(context, e.message);
        },
        codeSent: (String verificationId, [int? forceResendingToken]) {
          setState(() {
            _verificationId = verificationId;
          });
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          _verificationId = verificationId;
          print(_verificationId);

          // Navigator.push(
          //     context,
          //     MaterialPageRoute(
          //         builder: (context) => OtpScreen(
          //               phoneNumber: phoneNumber,
          //               verificationId: verificationId,
          //             )));
          print("Timout");
        });
  }
}
