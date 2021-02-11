import 'package:flutter/material.dart';
import 'package:MonumentCompass/bottomNavigationPages/account.dart ' as account;
import 'package:MonumentCompass/menuPrincipale.dart' as menu;
import 'tabs/preferiti.dart' as pref;

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
                fixedColor: Colors.lightBlue,
                currentIndex: indiceBarra,
                iconSize: 50,
                unselectedLabelStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
                selectedLabelStyle: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
                onTap: (value) {
                  if (value == 0)
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => menu.MenuPrincipale()));
                  if (value == 2)
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => account.Account()));
                },
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    label: "Home",
                    icon: Icon(
                      Icons.home,
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: "Viaggi",
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
                backgroundColor: Color.fromRGBO(192, 204, 218, 1),
                bottom: TabBar(
                  labelStyle: TextStyle(fontSize: 20),
                  tabs: [
                    Tab(
                      text: "Preferiti",
                    ),
                    Tab(text: "Viaggi"),
                    Tab(text: "Cronologia")
                  ],
                ),
              ),
              body: TabBarView(
                children: [TabBarView1(), TabBarView2(), TabBarView3()],
              ),
            )));
  }
}

class TabBarView1 extends StatefulWidget {
  @override
  _TabBarView1State createState() => _TabBarView1State();
}

setState(){}

class _TabBarView1State extends State<TabBarView1> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(crossAxisCount: 2, mainAxisSpacing: 10, children: [  ...pref.Preferiti.preferiti ], childAspectRatio: 0.9,
);
          
    
  }
}

class TabBarView2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [Text("TAB2"), Text("TAB2"), Text("TAB2")],
    );
  }
}

class TabBarView3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [Text("TAB3"), Text("TAB3"), Text("TAB3")],
    );
  }
}
