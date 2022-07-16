import 'package:geolocator/geolocator.dart';
import 'package:my_cash/controllers/GlobalState.dart';


void getCurrentLocation() async {
  Position position = await _determinePosition();
      // position;
      GlobalState.userDetails!.lat = "${position.latitude}";
      GlobalState.userDetails!.long = "${position.longitude}";
  
}

Future<Position> _determinePosition() async {
  LocationPermission permission;
  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      return Future.error('Location permissions are denied');
    }
  }
  if (permission == LocationPermission.deniedForever) {
    permission = await Geolocator.requestPermission();
    // Permissions are denied forever, handle appropriately.
    return Future.error(
        'Location permissions are permanently denied, we cannot request permissions.');
  }
  return await Geolocator.getCurrentPosition();
}
