

import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class SavedPreferences{

  static saveUserDetails(String data)async{
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('userDetails', data);
  }

  static getUserDetails()async{
    var data;
    SharedPreferences pref = await SharedPreferences.getInstance();
    var user =  pref.getString('userDetails');
    if(user != null){
      data = await jsonDecode(user);
    }
    return user;
  }



 static updateUserDetails(Map entry)async{
    var data;
    SharedPreferences pref = await SharedPreferences.getInstance();
    var user =  pref.getString('userDetails');
    if(user != null){
      data = await jsonDecode(user);
      data.addEntries();
      saveUserDetails(jsonEncode(data));
    }else{
      Map userList = {};
      userList.addEntries(entry.entries);
      saveUserDetails(jsonEncode(userList));
    }
    
  }


  //   /// Save Fields
  //    static saveUserFields(String data)async{
  //   SharedPreferences pref = await SharedPreferences.getInstance();
  //   var dataFields =  await SavedPreferences.getUserFields();
  //   dataFields.add(data);
  //   pref.setString('userFields', jsonEncode(dataFields));
  // }

  // static getUserFields()async{
  //   dynamic data = [];
  //   SharedPreferences pref = await SharedPreferences.getInstance();
  //   var user =  pref.getString('userFields');
  //   if(user != null){
  //     data = await jsonDecode(user);
  //   }
  //   return data;
  // }

///////////// Clear 
///
  static clearPreference()async{
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.clear();
  }

}