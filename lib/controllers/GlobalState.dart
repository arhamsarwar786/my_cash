import 'package:my_cash/controllers/device_info.dart';
import 'package:my_cash/controllers/saving_user_details.dart';
import 'package:my_cash/models/userDetailModel.dart';
import '../models/post_package_model.dart';

class GlobalState {
  static UserDetailModel? userDetails;
  static PostPackageModel? postPackage;

  static bool isDataPosted = false;

  // static setPostPackageDetails() {
  //   if (postPackage == null) {
  //     var data = {"packageId": ""};
  //     postPackage = PostPackageModel.fromJson(data);
  //   }
  // }

  static gettingDeviceInfo() async{
      await DeviceInfo.getDeviceInfo();
      
    // if (userDetails == null) {
    // }
  }
}
