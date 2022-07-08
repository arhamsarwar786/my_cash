import 'dart:convert';
import 'dart:developer';
import 'dart:io';
// import 'package:dio/dio.dart';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:my_cash/controllers/GlobalState.dart';

import 'package:my_cash/controllers/image_picker_controller.dart';
import 'package:my_cash/models/packages_model.dart';

class APIManager {
  // Dio dio = Dio();

  /////////////////// POST User Details  ///////////////////////
  Future postUserDetails(BuildContext context) async {
    // var multiPart; //declare varible for multipartfile

    //image

    //initialize form data
    // FormData formData = FormData.fromMap({
    //   "firstName": "Arham FromApp",
    //   "lastName": "Sarwar FromApp",
    //   "fullName": "ArhamSarwar FromApp",
    //   "phoneNumber": "9823928429",
    //   "gender": "M",
    //   "martialStatus": "marriage",
    //   "province": "Lahore",
    //   "city": "Lahore",
    //   "address": "sghdsadg",
    //   "dob": "hasgdhg",
    //   "cnic": "7836487234637824",
    //   "cnicFrontImg": base64Img,
    //   "cnicBackImg": base64Img,
    //   "selfieImg": base64Img,
    //   "mobileWalletType": "sagdah",
    //   "mobileAccountNumber": 9283192831823,
    //   "bankName": "HBL",
    //   "accountNumber": "7326472346",
    //   "bankCvv": "7832"
    // });
    // dio
    //     .post("https://www.geoinvest.pk/loan_dashboad/api/insert_user.php",
    //         data: formData)
    //     .then((value) {
    //   print(value.statusCode);
    // });

    // call user details api

    await http
        .post(
            Uri.parse(
                "https://www.geoinvest.pk/loan_dashboad/api/insert_user.php"),
            // headers: <String, String>{
            //   'Content-Type': 'application/json',
            // },
            body: GlobalState.userDetails!.toJson()
            // body: {
            //   'firstName': "Sami",
            //   'lastName': "Sami FromApp",
            //   'fullName': "Sami FromApp",
            //   'phoneNumber': "9823928429",
            //   'gender': "M",
            //   'martialStatus': "marriage",
            //   'province': "Lahore",
            //   'city': "Lahore",
            //   'address': "sghdsadg",
            //   'dob': "hasgdhg",
            //   'cnic': "7836487234637824",
            //   'cnicFrontImg': "$cnicFrontImgBase64",
            //   'cnicBackImg': "$cnicFrontImgBase64",
            //   'selfieImg': "$selfieImgBase64",
            //   'mobileWalletType': "sagdah",
            //   'mobileAccountNumber': "9283192831823",
            //   'bankName': "HBL",
            //   'accountNumber': "7326472346",
            //   'bankCvv': "7832"
            // }

            )
        .then((value) {
      log(value.body);
    });
  }

  ////// fetch Packages
  ///
  getPackages() async {
    var data = await http.get(
        Uri.parse("https://www.geoinvest.pk/loan_dashboad/packages_api.php"));
    var res = packagesModelFromJson(data.body);
    return res;
  }

  postPackageDetail() async {
    var data = await http.post(
        Uri.parse(
            "https://www.geoinvest.pk/loan_dashboad/api/user_pakages.php"),
        body: {
          "packageId": "98239832",
          "userId": "3530389273498237",
          "userName": "Arham Sarwar",
          "packageName": "gold",
          "amount": "1000",
          "interestAmount": "2000",
          "duration": "1 year"
        }).then((value){
          print(value);
        }).catchError((e){
          print(e);
        });
  }
}
