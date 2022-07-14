import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:my_cash/controllers/GlobalState.dart';
import 'package:my_cash/controllers/Preferences/preferences.dart';
import 'package:my_cash/view/home/home_screen.dart';
import 'package:my_cash/widgets.dart';

import '../../Utils/constant.dart';
import '../../controllers/image_picker_controller.dart';

// Mobile
String selectedWalletType = "";
final mobileAccountController = TextEditingController();
// Bank

String selectedBank = "";
final bankAccountController = TextEditingController();
final bankBranchCodeController = TextEditingController();

Widget frontImageMethod(context, size, _mobilePayment) {
  return Container(
    decoration: BoxDecoration(
        color:
            _mobilePayment ? const Color(0xFFFFc100) : const Color(0xFFCCCCCC),
        borderRadius: BorderRadius.circular(25),
        border:
            _mobilePayment ? Border.all(color: Colors.black, width: 3) : null,
        boxShadow: kElevationToShadow[4]),
    height: size.height * 0.15,
    child: cnicFrontImgFile != null
        ? Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: MemoryImage(cnicFrontImgFile!),
              ),
              borderRadius: BorderRadius.circular(25),
            ),
          )
        : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.white38,
                child: Icon(
                  Icons.camera,
                  size: 30,
                  color: primayColor,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "CNIC Front",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: size.width * 0.04,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
  );
}

Widget backImageMethod(context, size, bank) {
  return Container(
    decoration: BoxDecoration(
        color: bank ? const Color(0xFFFFc100) : const Color(0xFFCCCCCC),
        borderRadius: BorderRadius.circular(25),
        border: bank ? Border.all(color: Colors.black, width: 3) : null,
        boxShadow: kElevationToShadow[4]),
    height: size.height * 0.15,
    child: cnicBackImgFile != null
        ? Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: MemoryImage(cnicBackImgFile!),
              ),
              borderRadius: BorderRadius.circular(25),
            ),
          )
        : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.white38,
                child: Icon(
                  Icons.camera,
                  size: 30,
                  color: primayColor,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "CNIC Back",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: size.width * 0.04,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
  );
}

Widget selfieImageMethod(context, size, selfie) {
  return Container(
    decoration: BoxDecoration(
        color: selfie ? const Color(0xFFFFc100) : const Color(0xFFCCCCCC),
        borderRadius: BorderRadius.circular(25),
        border: selfie ? Border.all(color: Colors.black, width: 3) : null,
        boxShadow: kElevationToShadow[4]),
    height: size.height * 0.15,
    width: size.width * 0.70,
    child: selfieImgFile != null
        ? Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: MemoryImage(selfieImgFile!),
              ),
              borderRadius: BorderRadius.circular(25),
            ),
          )
        : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.white38,
                child: Icon(
                  Icons.camera,
                  size: 30,
                  color: primayColor,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Take Selfie",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: size.width * 0.05,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
  );
}

saveButton(context, size, isMobile) {
  return Center(
    child: InkWell(
      onTap: () {
        if (isMobile) {
          if (selectedWalletType.isEmpty ||
              selectedWalletType == "" ||
              selectedWalletType == null) {
            snackBar(context, "Please! Select Mobile Wallet");
          } else if (mobileAccountController.text.isEmpty ||
              mobileAccountController.text == "" ||
              mobileAccountController.text.length < 10) {
            snackBar(context, "Please! Enter Valid Mobile Number");
          } else {
            GlobalState.userDetails!.isMobile = "$isMobile";
            GlobalState.userDetails!.mobileWalletType = selectedWalletType;
            GlobalState.userDetails!.mobileAccountNumber =
                mobileAccountController.text;

            // for Bank
            GlobalState.userDetails!.bankName = "";
            GlobalState.userDetails!.accountNumber = "";
            GlobalState.userDetails!.branchCode = "";

            SavedPreferences.saveUserDetails(
                jsonEncode(GlobalState.userDetails));
            snackBar(context, "Mobile Details Saved!");

            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => Home()),
                (Route<dynamic> route) => false);
          }
        } else {
          if (selectedBank.isEmpty || selectedBank == "") {
            snackBar(context, "Please! Select Bank Account");
          } else if (bankAccountController.text.isEmpty ||
              bankAccountController.text == "") {
            snackBar(context, "Please! Enter Bank Account Number");
          } else if (bankBranchCodeController.text.isEmpty ||
              bankBranchCodeController.text == "") {
            snackBar(context, "Please! Enter Branch Code");
          } else {
            GlobalState.userDetails!.isMobile = "$isMobile";
            GlobalState.userDetails!.bankName = selectedBank;
            GlobalState.userDetails!.accountNumber = bankAccountController.text;
            GlobalState.userDetails!.branchCode = bankBranchCodeController.text;
            // for mobile
            GlobalState.userDetails!.mobileAccountNumber = "";
            GlobalState.userDetails!.mobileWalletType = "";

            SavedPreferences.saveUserDetails(
                jsonEncode(GlobalState.userDetails));
            snackBar(context, "Bank Details Saved!");
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => Home(),
                ),
                (Route<dynamic> route) => false);
          }
        }
      },
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width * 0.6,
            height: 40.0,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              color: Colors.black,
            ),
            child: Text("Save",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: size.width * 0.04))),
      ),
    ),
  );
}
