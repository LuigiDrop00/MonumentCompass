
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';

class ScopriNelleVicinanze extends StatefulWidget {
  @override
  _ScopriNelleVicinanzeState createState() => _ScopriNelleVicinanzeState();
}

class _ScopriNelleVicinanzeState extends State<ScopriNelleVicinanze> {
  double _latitudine;
  double _longitudine;

  @override
  void initState() {
    super.initState();
    getPosizione();
  }

  void getPosizione() async {
    final posizione = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);

    setState(() {
      _latitudine = posizione.latitude;
      _longitudine = posizione.longitude;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GoogleMap(
            initialCameraPosition:
                CameraPosition(target: LatLng(_latitudine, _longitudine),zoom: 15)));
  }
}
