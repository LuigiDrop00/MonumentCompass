import 'package:flutter/material.dart';
import 'package:MonumentCompass/preferiti.dart' as preferiti;
import 'package:MonumentCompass/account.dart' as account;
import 'package:MonumentCompass/menuPrincipale.dart' as menu;
class MyBottomNavigationBar extends StatefulWidget {
  MyBottomNavigationBar(this.contesto);
  final BuildContext contesto;
  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState(contesto);
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {

  int indiceBarra = 0;
  _MyBottomNavigationBarState(this.contesto);
  BuildContext contesto;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        fixedColor: Colors.black,
        currentIndex: indiceBarra,
        iconSize: 50,
        unselectedLabelStyle: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
        selectedLabelStyle: TextStyle(
            color: Colors.green, fontWeight: FontWeight.bold, fontSize: 20),
            onTap: (value) {
              indiceBarra = value;
              
              if (value == 0) Navigator.push(contesto, MaterialPageRoute(builder: (context) => menu.MenuPrincipale()));
              if (value == 1) Navigator.push(contesto, MaterialPageRoute(builder: (context) => preferiti.Preferiti()));
              if (value == 2) Navigator.push(contesto, MaterialPageRoute(builder: (context) => account.Account()));
              setState(() {});
             
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
      );
  }
}