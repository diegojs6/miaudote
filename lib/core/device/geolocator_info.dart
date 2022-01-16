import 'package:geolocator/geolocator.dart';

abstract class IGeolocatorInfo {
  Future<bool> handlePermission();
  Future<Position> currentPosition();
}

class GeolocatorInfo implements IGeolocatorInfo {
  final GeolocatorPlatform _geolocatorPlatform;

  GeolocatorInfo(this._geolocatorPlatform);

  @override
  Future<bool> handlePermission() async {
    LocationPermission permission;

    permission = await _geolocatorPlatform.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await _geolocatorPlatform.requestPermission();
      if (permission == LocationPermission.denied) {
        return false;
      }
    }
    return true;
  }

  @override
  Future<Position> currentPosition() async {
    final hasPermission = await handlePermission();
    final gec = LocationSettings(accuracy: LocationAccuracy.high, distanceFilter: 0);
    final position = await _geolocatorPlatform.getCurrentPosition(locationSettings: gec);

    if (!hasPermission) {
      return position;
    }

    return position;
  }
}
