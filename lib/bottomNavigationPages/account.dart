import 'package:flutter/material.dart';
import 'package:MonumentCompass/bottomNavigationPages/tabs.dart ' as tabs;
import 'package:MonumentCompass/menuPrincipale.dart' as menu;

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
  static const int indexBar = 2;
}

class _AccountState extends State<Account> {
  int indiceBarra = Account.indexBar;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
        currentIndex: indiceBarra,
        iconSize: 50,
        unselectedLabelStyle: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
        selectedLabelStyle: TextStyle(
            color: Colors.green, fontWeight: FontWeight.bold, fontSize: 20),
            onTap: (value) {
              indiceBarra = value;
              if (value == 0) Navigator.push(context, MaterialPageRoute(builder: (context) => menu.MenuPrincipale()));
              if (value == 1) Navigator.push(context, MaterialPageRoute(builder: (context) => tabs.Preferiti()));
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
      ) ,
            appBar: AppBar(
      title: Text("Account"),
      centerTitle: true,
    )));
  }
}
