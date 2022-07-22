import 'dart:convert';

import 'package:flutter/foundation.dart';

import '../models/userDetailModel.dart';
import 'API_MANGER/api_manager.dart';
import 'GlobalState.dart';
import 'Preferences/preferences.dart';


updateUserDetails(data){
  SavedPreferences.saveUserDetails(jsonEncode(data));
}

fetchUserDetails({@required number}){
  APIManager().getUserDetails(phone: number);
}

saveUserGlobally() async {
  if (GlobalState.userDetails == null) {
    var data = await SavedPreferences.getUserDetails();
    if (data != null) { 
      GlobalState.userDetails = UserDetailModel.fromJson(jsonDecode(data));
    }
    else{
    GlobalState.gettingDeviceInfo();      
    }
  }
}
