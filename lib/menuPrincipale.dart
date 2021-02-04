import 'package:flutter/material.dart';

class MenuPrincipale extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(
            child: Scaffold(
      floatingActionButton: Container(
          width: 300.0,
          height: 300.0,
          child: new RawMaterialButton(
              shape: new CircleBorder(),
              elevation: 0.0,
              child: Icon(
                Icons.favorite,
                color: Colors.blue,
              ),
              onPressed: () {})),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: "Home",
            icon: IconButton(
              icon: Icon(Icons.home),
              onPressed: () => {},
            ),
          ),
          BottomNavigationBarItem(
            label: "Viaggi",
            icon: IconButton(
              icon: Icon(Icons.home),
              onPressed: () => {},
            ),
          ),
          BottomNavigationBarItem(
            label: "Profilo",
            icon: IconButton(
              icon: Icon(Icons.home),
              onPressed: () => {},
            ),
          )
        ],
      ),
    )));
  }
}
