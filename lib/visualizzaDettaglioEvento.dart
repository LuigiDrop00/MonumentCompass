import 'bottomNavigationPages/account.dart' as account;
import 'bottomNavigationPages/tabs.dart' as tabs;
import 'package:MonumentCompass/menuPrincipale.dart' as menu;
import 'package:flutter/material.dart';

class DettaglioEvento extends StatefulWidget {
  DettaglioEvento(
      {@required this.immagine,
      @required this.nomeEvento,
      @required this.descrizione});
  final String descrizione;
  final ImageProvider immagine;
  final String nomeEvento;

  @override
  _DettaglioEventoState createState() => _DettaglioEventoState();
}

class _DettaglioEventoState extends State<DettaglioEvento> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        iconSize: 50,
        unselectedLabelStyle: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
        selectedLabelStyle: TextStyle(
            color: Colors.lightBlue, fontWeight: FontWeight.bold, fontSize: 20),
        onTap: (value) {
          if (value == 0)
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => menu.MenuPrincipale()));
          if (value == 1)
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => tabs.Preferiti()));
          if (value == 2)
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => account.Account()));
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
        backgroundColor: Color.fromRGBO(192, 204, 218, 1),
        automaticallyImplyLeading: true,
        title: Text(
          "EVENTO:",
          textScaleFactor: 1.5,
        ),
        centerTitle: true,
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
                color: Color.fromRGBO(192, 204, 218, 1),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          "${widget.nomeEvento}:",
                          textAlign: TextAlign.left,
                          textScaleFactor: 2,
                        ),
                        margin: EdgeInsets.only(top: 18, left: 15, bottom: 13),
                      ),
                      Image(
                          image: widget.immagine,
                          height: 200,
                          width: double.infinity,
                          fit: BoxFit.fill),
                      Container(
                          margin: EdgeInsets.only(top: 15),
                          child: Text(
                            widget.descrizione.substring(0, 101),
                            textScaleFactor: 1.5,
                          )),
                      Text(
                        "continua...",
                        style: TextStyle(color: Colors.blue),
                        textScaleFactor: 1.5,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            size: 55,
                          ),
                          Icon(
                            Icons.star,
                            size: 55,
                          ),
                          Icon(
                            Icons.star,
                            size: 55,
                          ),
                          Icon(
                            Icons.star_border,
                            size: 55,
                          ),
                          Icon(
                            Icons.star_outline,
                            size: 55,
                          ),
                          Column(
                            children: [
                              Icon(
                                Icons.history_edu_rounded,
                                size: 50,
                              ),
                              Text(
                                "recensisci",
                                textScaleFactor: 1.2,
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                )),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    "INFO",
                    style: TextStyle(fontSize: 28),
                  )),
              Container(
                  margin: EdgeInsets.only(right: 10),
                  child: Row(
                    children: [
                      Text(
                        "Aggiungi ai preferiti",
                        textScaleFactor: 1.8,
                      ),
                      Icon(
                        Icons.favorite_outline,
                        size: 45,
                      )
                    ],
                  )),
            ],
          ),
          Divider(
            thickness: 2,
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 8),
                child: Icon(
                  Icons.pin_drop_outlined,
                  size: 40,
                ),
              ),
              Text(
                "Via Indirizzo, 340",
                textScaleFactor: 2,
              )
            ],
          ),
          Divider(
            thickness: 2,
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 8),
                child: Icon(
                  Icons.phone,
                  size: 40,
                ),
              ),
              Text(
                "077322123",
                textScaleFactor: 2,
              )
            ],
          ),
          Divider(thickness: 2),
          Row(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 8),
                child: Icon(
                  Icons.share_outlined,
                  size: 40,
                ),
              ),
              Text("${widget.nomeEvento}.procida.it", textScaleFactor: 2, style: TextStyle(color: Colors.lightBlue),)
            ],
          ),
          Divider(thickness: 2),
          Row(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 8),
                child: Icon(
                  Icons.schedule_outlined,
                  size: 40,
                ),
              ),
              Text("Durata consigliata: 1:30", textScaleFactor: 2)
            ],
          )
        ],
      ),
    );
  }
}
