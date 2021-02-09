
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:MonumentCompass/bottomNavigationPages/account.dart ' as account;
import 'package:MonumentCompass/bottomNavigationPages/preferiti.dart ' as preferiti;
import 'package:MonumentCompass/menuPrincipale.dart' as menu;

class ScopriNelleVicinanze extends StatefulWidget {
  @override
  _ScopriNelleVicinanzeState createState() => _ScopriNelleVicinanzeState();
}

class _ScopriNelleVicinanzeState extends State<ScopriNelleVicinanze> {
  double _latitudine;
  double _longitudine;
  int indiceBarra = 0;
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
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.black,
        currentIndex: indiceBarra,
        iconSize: 50,
        unselectedLabelStyle: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
        selectedLabelStyle: TextStyle(
            color: Colors.green, fontWeight: FontWeight.bold, fontSize: 20),
            onTap: (value) {
              
              if (value == 0) Navigator.push(context, MaterialPageRoute(builder: (context) => menu.MenuPrincipale()));
              if (value == 1) Navigator.push(context, MaterialPageRoute(builder: (context) => preferiti.Preferiti()));
              if (value == 2) Navigator.push(context, MaterialPageRoute(builder: (context) => account.Account()));
              setState(() {
                indiceBarra = value;
              });
             
            },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(
              Icons.home,
            ),
          ),
          BottomNavigationBarItem(
            label: "Preferiti",
            icon: Icon(
              Icons.favorite_border_outlined,
            ),
          ),
          BottomNavigationBarItem(
            label: "Account",
            icon: Icon(
              Icons.account_circle_outlined,
            ),
          ),
          
        ],
      ) ,
        body: GoogleMap(myLocationButtonEnabled: true,
            initialCameraPosition:
                CameraPosition(target: LatLng(40.8930636, 12.9596342),zoom: 15)));
  }
}
