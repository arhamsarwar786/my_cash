


import 'package:my_cash/controllers/API_MANGER/api_manager.dart';
import 'package:my_cash/models/packages_model.dart';

Future<List<PackagesModel>?> getPackages()async{
  try {
      var data =  await APIManager().getPackages();
      return data;
  } catch (e) {
    print(e);
  }
}