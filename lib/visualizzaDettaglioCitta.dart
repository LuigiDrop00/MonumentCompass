import 'package:flutter/material.dart';
import 'package:MonumentCompass/src/cartolinaMonumenti.dart' as card;
import 'package:MonumentCompass/bottomNavigationPages/account.dart ' as account;
import 'package:MonumentCompass/bottomNavigationPages/tabs.dart ' as tabs;
import 'package:MonumentCompass/menuPrincipale.dart' as menu;

class DettaglioCitta extends StatefulWidget {
  DettaglioCitta({@required this.immagine, @required this.nomeCitta,@required this.provincia, @required this.listaLuoghi, @required this.listaEventi});
  final ImageProvider immagine;
  final String nomeCitta;
  final List<Widget> listaLuoghi;
  final List<Widget> listaEventi;
  final String provincia;
  
  @override
  _DettaglioCittaState createState() => _DettaglioCittaState();
}

class _DettaglioCittaState extends State<DettaglioCitta> {

  int indiceBarra = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indiceBarra,
        iconSize: 50,
        unselectedLabelStyle: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
        selectedLabelStyle: TextStyle(
            color: Colors.lightBlue, fontWeight: FontWeight.bold, fontSize: 20),
            onTap: (value) {
              if (value == 0) Navigator.push(context, MaterialPageRoute(builder: (context) => menu.MenuPrincipale()));
              if (value == 1) Navigator.push(context, MaterialPageRoute(builder: (context) => tabs.Preferiti()));
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
        backgroundColor: Color.fromRGBO(192, 204, 218, 1) ,
        automaticallyImplyLeading: true,
        title: Text("CITTA'", textScaleFactor: 1.5,),
        centerTitle: true,
        
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
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
                        "${widget.nomeCitta} ${ widget.provincia}",
                        textAlign: TextAlign.left,
                        textScaleFactor: 2,
                      ),
                      margin: EdgeInsets.only(top: 25, left: 15, bottom: 13),
                    )
                  ],
                )),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, bottom: 10),
            alignment: Alignment.centerLeft,
            child: Text(
              "Il Meglio di ${widget.nomeCitta}:",
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
                    color: Colors.indigo[900],
                  ),
                  Icon(
                    Icons.theater_comedy,
                    size: 40,
                    color: Colors.indigo[900],
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
                //PASSARE IN INPUT LISTA MUSEI/TEATRIs
                ...widget.listaLuoghi
              ]),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top:13),
            padding: EdgeInsets.only(top:5,left:10),
            color: Color.fromRGBO(192, 204, 218, 1),
            child: Row(
              children: [
                Icon(Icons.date_range_rounded, size: 30, color: Colors.indigo[900],),
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
                    // PASSARE IN INPUT LISTA DEGLI EVENTI
                    ...widget.listaEventi
                  ]),
              ),
            ),
        ],
      ),
    );
  }
}
