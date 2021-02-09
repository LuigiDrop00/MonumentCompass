import 'package:flutter/material.dart';
import 'package:MonumentCompass/src/cartolinaMonumenti.dart' as card;
import 'package:MonumentCompass/bottomNavigationPages/account.dart ' as account;
import 'package:MonumentCompass/bottomNavigationPages/preferiti.dart ' as preferiti;
import 'package:MonumentCompass/menuPrincipale.dart' as menu;

class DettaglioCitta extends StatefulWidget {
  DettaglioCitta({@required this.immagine, @required this.title, provincia});
  final ImageProvider immagine;
  final String title;
  @override
  _DettaglioCittaState createState() => _DettaglioCittaState();
}

class _DettaglioCittaState extends State<DettaglioCitta> {
  int indiceBarra = 0;
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
              indiceBarra = value;
              if (value == 0) Navigator.push(context, MaterialPageRoute(builder: (context) => menu.MenuPrincipale()));
              if (value == 1) Navigator.push(context, MaterialPageRoute(builder: (context) => preferiti.Preferiti()));
              if (value == 2) Navigator.push(context, MaterialPageRoute(builder: (context) => account.Account()));
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
      ),
      
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text("CITTA'"),
        centerTitle: true,
        
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
                color: Color.fromRGBO(192, 204, 218, 1),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(
                        image: widget.immagine,
                        height: 200,
                        width: double.infinity,
                        fit: BoxFit.fill),
                    Container(
                      child: Text(
                        "PONZA(LT)",
                        textAlign: TextAlign.left,
                        textScaleFactor: 2,
                      ),
                      margin: EdgeInsets.only(top: 25, left: 15, bottom: 13),
                    )
                  ],
                )),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, top: 20, bottom: 10),
            alignment: Alignment.centerLeft,
            child: Text(
              "Il Meglio di ${widget.title}:",
              textScaleFactor: 1.8,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Container(
              padding: EdgeInsets.only(top: 10, left: 10),
              color: Color.fromRGBO(192, 204, 218, 1),
              child: Row(
                children: [
                  Icon(
                    Icons.account_balance_rounded,
                    size: 40,
                  ),
                  Icon(
                    Icons.theater_comedy,
                    size: 40,
                  ),
                  Text("Musei e Teatri:", textScaleFactor: 1.65),
                ],
              )),
          Container(
            padding: EdgeInsets.symmetric(vertical:12),
            margin: EdgeInsets.only(bottom: 10),
            color: Color.fromRGBO(192, 204, 218, 1),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                card.CartolinaMonumento(
                  immagine: AssetImage(""),
                  title: "PONZA",
                  numeroStelle: 3,
                ),
                card.CartolinaMonumento(
                  immagine: AssetImage(""),
                  title: "PONZA",
                  numeroStelle: 4,
                ),
                card.CartolinaMonumento(
                  immagine: AssetImage(""),
                  title: "PONZA",
                ),
                card.CartolinaMonumento(
                  immagine: AssetImage(""),
                  title: "PONZA",
                ),
                card.CartolinaMonumento(
                  immagine: AssetImage(""),
                  title: "PONZA",
                )
              ]),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top:13),
            padding: EdgeInsets.only(top:5,left:10),
            color: Color.fromRGBO(192, 204, 218, 1),
            child: Row(
              children: [
                Icon(Icons.date_range_rounded, size: 30,),
                Text("Eventi:", textScaleFactor: 1.6,style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical:12),
            color: Color.fromRGBO(192, 204, 218, 1),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                card.CartolinaMonumento(
                  immagine: AssetImage(""),
                  title: "PONZA",
                ),
                card.CartolinaMonumento(
                  immagine: AssetImage(""),
                  title: "PONZA",
                ),
                card.CartolinaMonumento(
                  immagine: AssetImage(""),
                  title: "PONZA",
                ),
                card.CartolinaMonumento(
                  immagine: AssetImage(""),
                  title: "PONZA",
                ),
                card.CartolinaMonumento(
                  immagine: AssetImage(""),
                  title: "PONZA",
                )
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
