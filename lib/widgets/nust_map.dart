import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class NustMap extends StatelessWidget {
  GoogleMapController mapController;

  final LatLng _nust = const LatLng(33.644171, 72.989004);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      onMapCreated: _onMapCreated,
      initialCameraPosition: CameraPosition(
        target: _nust,
        zoom: 15.0,
      ),
    );
  }
}
