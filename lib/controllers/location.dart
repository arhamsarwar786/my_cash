import 'package:geolocator/geolocator.dart';
import 'package:my_cash/controllers/GlobalState.dart';
import 'package:permission_handler/permission_handler.dart';

 getCurrentLocation() async {
  await _determinePosition();
  // position;
  
}

Future _determinePosition() async {
  // LocationPermission permission;
  // permission = await Geolocator.checkPermission();
  var permission = await Permission.location.status;
  if (permission.isGranted) {
    await Geolocator.requestPermission();
    var position = await Geolocator.getCurrentPosition();
    GlobalState.userDetails!.lat = "${position.latitude}";
  GlobalState.userDetails!.long = "${position.longitude}";
  } else if (permission == LocationPermission.deniedForever) {
    await Permission.location.request();
  } else {
    await Permission.location.request();
  }
  
}
