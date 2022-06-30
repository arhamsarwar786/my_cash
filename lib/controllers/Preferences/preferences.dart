

import 'package:shared_preferences/shared_preferences.dart';

class SavedPreferences{

  static saveDetails(String data)async{
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('details', data);
  }
}