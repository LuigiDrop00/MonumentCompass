import 'package:flutter/material.dart';
import 'package:fluttericon/typicons_icons.dart' as icon;
import 'package:google_fonts/google_fonts.dart';
import 'package:MonumentCompass/doveVuoiAndare.dart' as doveAndare;

class MenuPrincipale extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(
            child: Scaffold(
      appBar: AppBar(
        title: Container(
            child: Text("Monument Compass",
                style:
                    GoogleFonts.grandHotel(color: Colors.black, fontSize: 50))),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/cultura.png"),
                repeat: ImageRepeat.repeat,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.3), BlendMode.dstATop))),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: MaterialButton(
                color: Colors.grey,
                height: 100,
                minWidth: double.infinity,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(width: 6, color: Colors.grey[800])),
                onPressed: () {},
                child: Text(
                  'Scopri nelle Vicinanze',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
            MaterialButton(
              color: Colors.grey,
              height: 100,
              minWidth: double.infinity,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(width: 6, color: Colors.grey[800])),
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => doveAndare.DoveAndare())),
              child: Text(
                'Dove vuoi andare?',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
          ]),
        ),
      ),
      floatingActionButton: Container(
          width: 125.0,
          height: 125.0,
          child: new RawMaterialButton(
              splashColor: Colors.pink,
              fillColor: Colors.grey,
              shape: new CircleBorder(
                  side: BorderSide(color: Colors.grey[700], width: 7)),
              elevation: 0.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Icon(
                      icon.Typicons.edit,
                      color: Colors.white,
                      size: 60,
                    ),
                  ),
                  Text("Recensisci",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white))
                ],
              ),
              onPressed: () {})),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 4,
        unselectedLabelStyle: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
        selectedLabelStyle: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: "Home",

            icon: IconButton(
              iconSize: 50,
              padding: EdgeInsets.zero,
              icon: Icon(
                Icons.home,
              ),
              onPressed: () => {},
            ),
          ),
          BottomNavigationBarItem(
            label: "Preferiti",
            icon: IconButton(
              padding: EdgeInsets.zero,
              iconSize: 50,
              icon: Icon(
                Icons.favorite_border,
              ),
              onPressed: () => {},
            ),
          ),
          BottomNavigationBarItem(
            label: "Account",
            icon: IconButton(
              iconSize: 50,
              padding: EdgeInsets.zero,
              icon: Icon(Icons.account_circle_outlined),
              onPressed: () => {},
            ),
          )
        ],
      ),
    )));
  }
}
