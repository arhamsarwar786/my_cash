import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:device_info_plus/device_info_plus.dart';
// import 'package:dio/dio.dart';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:my_cash/controllers/GlobalState.dart';

import 'package:my_cash/controllers/image_picker_controller.dart';
import 'package:my_cash/models/loan_status_model.dart';
import 'package:my_cash/models/packages_model.dart';

class APIManager {
  // Dio dio = Dio();

  /////////////////// POST User Details  ///////////////////////
  Future postUserDetails(BuildContext context) async {
    // 'first_name' : , 
    //       'last_name' : , 
    //       'full_name' : , 
    //       'phone_number' : , 
    //       'gender' : , 
    //       'martial_status' : , 
    //       'province' : , 
    //       'city' : , 
    //       'address' : , 
    //       'dob' : , 
    //       'cnic' : , 
    //       'cnic_front_img' : , 62cfaf05ae3261657777925.png
    //       'cnic_back_img' : , 62cfaf05ae3c41657777925.png
    //       'selfie_img' : , 62cfaf05ae4321657777925.png
    //       'mobile_wallet_type' : , 
    //       'mobile_account_number' : , 
    //       'bank_name' : , 
    //       'account_umber' : , 
    //       'bank_cvv' : , 
    //       'income' : , 
    //       'designation' : , 
    //       'company_name' : , 
    //       'company_address' : , 
    //       'company_telephone' : , 
    //       'is_mobile' : , 
    //       'education' : , 
    //       'recording_time' : , 
    //       'device_name' : , 
    //       'equipment_system' : , 
    //       'device_serial_number' : , 
    //       'system_version' : , 
    //       'equipment_model' : ,

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

  postPackageDetail(context) async {
    await http
        .post(
            Uri.parse(
                "https://www.geoinvest.pk/loan_dashboad/api/user_pakages.php"),
            body: GlobalState.postPackage!.toJson())
        .then((value) {
      print(value.body);
    }).catchError((e) {
      print(e);
    });
  }


  getLoadStatus({cnic}) async {

    try {
    var detail = await http
        .post(
            Uri.parse(
                "https://www.geoinvest.pk/loan_dashboad/api/laon_users_api.php"),
            body: {"user_cnic":cnic} );
          var res = loanStatusModelFromJson(detail.body);
          return res;
      
    } catch (e) {
      print(e);
    }

          // print(res.toJson());

  }



}
