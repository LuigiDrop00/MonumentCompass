import 'package:flutter/material.dart';
import 'package:MonumentCompass/bottomNavigationPages/account.dart ' as account;
import 'package:MonumentCompass/menuPrincipale.dart' as menu;

class Preferiti extends StatefulWidget {
  
  static const int indexBar = 1;
  @override
  _PreferitiState createState() => _PreferitiState();
}

class _PreferitiState extends State<Preferiti> {
  int indiceBarra = Preferiti.indexBar;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
            length: 3,
            child: Scaffold(
              bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.black,
        currentIndex: indiceBarra,
        iconSize: 50,
        unselectedLabelStyle: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
        selectedLabelStyle: TextStyle(
            color: Colors.green, fontWeight: FontWeight.bold, fontSize: 20),
            onTap: (value) {
              indiceBarra = value;
              if (value == 0) Navigator.push(context, MaterialPageRoute(builder: (context) => menu.MenuPrincipale()));
              if (value == 2) Navigator.push(context, MaterialPageRoute(builder: (context) => account.Account()));
              setState((){

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
      ),
              appBar: AppBar(
                bottom: TabBar(
                  labelStyle: TextStyle(fontSize: 25),
                  tabs: [
                    Tab(
                      text: "hello",
                    ),
                    Tab(text: "apple"),
                    Tab(text: "fav")
                  ],
                ),
              ),
            )));
  }
}
