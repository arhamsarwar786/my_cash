

import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:my_cash/controllers/GlobalState.dart';
import 'package:my_cash/controllers/saving_user_details.dart';
import 'package:my_cash/models/userDetailModel.dart';

class DeviceInfo{

  static getDeviceInfo()async{
    var deviceInfo = DeviceInfoPlugin();
    if(Platform.isAndroid){
      var device = await deviceInfo.androidInfo;
    var data = {
      "recordingTime": "${DateTime.now()}",
      "deviceName":"${device.manufacturer}",
      "equipmentSystem":"ANDROID",
      "deviceSerialNumber": "${device.androidId}",
      "systemVersion":"${device.version.release}",
      "equipmentModel":"${device.model}"
      };
      GlobalState.userDetails = UserDetailModel.fromJson(data);
      print( "Device ${GlobalState.userDetails}");
      updateUserDetails(GlobalState.userDetails);
    }

    // print(data);
  }
}