import 'dart:convert';

import '../models/userDetailModel.dart';
import 'GlobalState.dart';
import 'Preferences/preferences.dart';

saveUserDetail(Map entry) async {
  var data = await SavedPreferences.getUserDetails();
  if (data != null) {
    // print(data.contains(singleDetailKey));
    data.addEntries(entry);
    SavedPreferences.saveUserDetails(data);
    GlobalState.userDetails = UserDetailModel.fromJson(jsonDecode(data));
    print(GlobalState.userDetails!.phoneNumber);
  } else {
    SavedPreferences.updateUserDetails(entry);
    print(data);
  }
}

saveUserGlobally() async {
  if (GlobalState.userDetails == null) {
    var data = await SavedPreferences.getUserDetails();
    if (data != null) {
      GlobalState.userDetails = UserDetailModel.fromJson(jsonDecode(data));
    }
    // else{
    //   saveUserDetail({'address':""});
      
    // }
  }
}
