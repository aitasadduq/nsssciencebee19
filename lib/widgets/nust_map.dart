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
    Marker(
      markerId: MarkerId('9'),
      position: LatLng(33.641616, 72.983702),
      infoWindow: InfoWindow(title: 'Exam Hall'),
    ),
    Marker(
      markerId: MarkerId('10'),
      position: LatLng(33.640743, 72.985281),
      infoWindow: InfoWindow(title: 'NICE'),
    ),
    Marker(
      markerId: MarkerId('11'),
      position: LatLng(33.641847, 72.988884),
      infoWindow: InfoWindow(title: 'KYBO'),
    ),
    Marker(
      markerId: MarkerId('12'),
      position: LatLng(33.642431, 72.989981),
      infoWindow: InfoWindow(title: 'SEECS'),
    ),
    Marker(
      markerId: MarkerId('13'),
      position: LatLng(33.643919, 72.985708),
      infoWindow: InfoWindow(title: 'Masjid'),
    ),
    Marker(
      markerId: MarkerId('14'),
      position: LatLng(33.644418, 72.987164),
      infoWindow: InfoWindow(title: 'RIMMS'),
    ),
    Marker(
      markerId: MarkerId('15'),
      position: LatLng(33.643837, 72.991230),
      infoWindow: InfoWindow(title: 'NBS'),
    ),
    Marker(
      markerId: MarkerId('16'),
      position: LatLng(33.645727, 72.988847),
      infoWindow: InfoWindow(title: 'SADA'),
    ),
    Marker(
      markerId: MarkerId('17'),
      position: LatLng(33.644136, 72.987639),
      infoWindow: InfoWindow(title: 'IAEC'),
    ),
    Marker(
      markerId: MarkerId('18'),
      position: LatLng(33.644951, 72.988035),
      infoWindow: InfoWindow(title: 'IGIS'),
    ),
    Marker(
      markerId: MarkerId('19'),
      position: LatLng(33.646852, 72.989256),
      infoWindow: InfoWindow(title: 'Margalla Cafe'),
    ),
    Marker(
      markerId: MarkerId('20'),
      position: LatLng(33.641616, 72.983702),
      infoWindow: InfoWindow(title: 'Exam Hall'),
    ),
    Marker(
      markerId: MarkerId('21'),
      position: LatLng(33.647433, 72.990962),
      infoWindow: InfoWindow(title: 'Dreamville'),
    ),
    Marker(
      markerId: MarkerId('22'),
      position: LatLng(33.648951, 72.992882),
      infoWindow: InfoWindow(title: 'SCME'),
    ),
    Marker(
      markerId: MarkerId('23'),
      position: LatLng(33.643164, 72.993096),
      infoWindow: InfoWindow(title: 'CIPS'),
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
