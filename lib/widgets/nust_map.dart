import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class NustMap extends StatelessWidget {
  GoogleMapController mapController;

  final LatLng _nust = const LatLng(33.644171, 72.989004);
  final Set<Marker> _markers = {
    Marker(
      markerId: MarkerId('0'),
      position: LatLng(33.641917, 72.993944),
      infoWindow: InfoWindow(title: 'Concordia 3'),
    ),
    Marker(
      markerId: MarkerId('1'),
      position: LatLng(33.643333, 72.984750),
      infoWindow: InfoWindow(title: 'Trees behind HBL'),
    ),
    Marker(
      markerId: MarkerId('2'),
      position: LatLng(33.643257, 72.994515),
      infoWindow: InfoWindow(title: 'Rector House'),
    ),
    Marker(
      markerId: MarkerId('3'),
      position: LatLng(33.641939, 72.992573),
      infoWindow: InfoWindow(title: 'NUST Library'),
    ),
    Marker(
      markerId: MarkerId('4'),
      position: LatLng(33.646553, 72.987405),
      infoWindow: InfoWindow(title: 'ASAB Green House'),
    ),
    Marker(
      markerId: MarkerId('5'),
      position: LatLng(33.642893, 72.988070),
      infoWindow: InfoWindow(title: 'Concordia 2 ATM'),
    ),
    Marker(
      markerId: MarkerId('6'),
      position: LatLng(33.644640, 72.989593),
      infoWindow: InfoWindow(title: 'Helipad'),
    ),
    Marker(
      markerId: MarkerId('7'),
      position: LatLng(33.649388, 72.993509),
      infoWindow: InfoWindow(title: 'SCME Tuck Shop'),
    ),
    Marker(
      markerId: MarkerId('8'),
      position: LatLng(33.644312, 72.992938),
      infoWindow: InfoWindow(title: 'S3H'),
    ),
  };

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      markers: _markers,
      onMapCreated: _onMapCreated,
      initialCameraPosition: CameraPosition(
        target: _nust,
        zoom: 15.0,
      ),
    );
  }
}
