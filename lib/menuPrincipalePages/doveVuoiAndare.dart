import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart' as ico;
import 'package:MonumentCompass/bottomNavigationPages/account.dart ' as account;
import 'package:MonumentCompass/bottomNavigationPages/preferiti.dart ' as preferiti;
import 'package:MonumentCompass/menuPrincipale.dart' as menu;

class DoveAndare extends StatefulWidget {
  @override
  _DoveAndareState createState() => _DoveAndareState();
}

class _DoveAndareState extends State<DoveAndare> {
  final luogo = TextEditingController();
  int indiceBarra = 0;
  @override
  void initState() {
    super.initState();

    // Start listening to changes.
    luogo.addListener(() {
      print("parola ins:" + luogo.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
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
            toolbarHeight: 66,
            backgroundColor: Colors.grey[400],
            title: Text(
              "Dove vuoi andare?",
              style: TextStyle(fontSize: 28),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: IconButton(
                    iconSize: 30,
                    icon: Icon(Icons.arrow_back),
                    onPressed: () => Navigator.pop(context)),
              )
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(24.0),
            child: ListView(
              children: [
                TextField(
                  controller: luogo,
                  style: TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                      suffixIcon: Icon(ico.FontAwesome5.map_marked_alt),
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(width: 3)),
                      hintText: 'Digita un luogo...'),
                ),

                Divider(),
                //DA QUI INIZIANO I LUOGHI DINAMICI

                ListView(
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  children: [
                    Card(
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Image(
                                image: AssetImage("assets/Ponza00.jpg"),
                                height: 100,
                                width: double.infinity,
                                fit: BoxFit.fitWidth,
                              ),
                              IconButton(
                                iconSize: 35,
                                color: Colors.red,
                                icon: Icon(Icons.favorite),
                                onPressed: () => {},
                              )
                            ],
                          ),
                          Text("TITOLO", textAlign: TextAlign.right),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.star_border),
                              Icon(Icons.star_border),
                              Icon(Icons.star_border),
                              Icon(Icons.star_border),
                              Icon(Icons.star_border),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Map<String, String> province = {
//   "AGRIGENTO": "AG",
//   "ALESSANDRIA": "AL",
//   "ANCONA": "AN",
//   "AOSTA": "AO",
//   "AREZZO": "AR",
//   "ASCOLI PICENO": "AP",
//   "ASTI": "AT",
//   "AVELLINO": "AV",
//   "BARI": "BA",
//   "BELLUNO": "BL",
//   "BENEVENTO": "BN",
//   "BERGAMO": "BG",
//   "BIELLA": "BI",
//   "BOLOGNA": "BO",
//   "BOLZANO": "BZ",
//   "BRESCIA": "BS",
//   "BRINDISI": "BR",
//   "CAGLIARI": "CA",
//   "CALTANISSETTA": "CL",
//   "CAMPOBASSO": "CB",
//   "CASERTA": "CE",
//   "CATANIA": "CT",
//   "CATANZARO": "CZ",
//   "CHIETI": "CH",
//   "COMO": "CO",
//   "COSENZA": "CS",
//   "CREMONA": "CR",
//   "CROTONE": "KR",
//   "CUNEO": "CN",
//   "ENNA": "EN",
//   "FERRARA": "FE",
//   "FIRENZE": "FI",
//   "FOGGIA": "FG",
//   "FORLI": "FO",
//   "FROSINONE": "FR",
//   "GENOVA": "GE",
//   "GORIZIA": "GO",
//   "GROSSETO": "GR",
//   "IMPERIA": "IM",
//   "ISERNIA": "IS",
//   "LA SPEZIA": "SP",
//   "L’AQUILA": "AQ",
//   "LATINA": "LT",
//   "LECCE": "LE",
//   "LECCO": "LC",
//   "LIVORNO": "LI",
//   "LODI": "LO",
//   "LUCCA": "LU",
//   "MACERATA": "MC",
//   "MANTOVA": "MN",
//   "MASSA": "MS",
//   "MATERA": "MT",
//   "MESSINA": "ME",
//   "MILANO": "MI",
//   "MODENA": "MO",
//   "NAPOLI": "NA",
//   "NOVARA": "NO",
//   "NUORO": "NU",
//   "ORISTANO": "OR",
//   "PADOVA": "PD",
//   "PALERMO": "PA",
//   "PARMA": "PR",
//   "PAVIA": "PV",
//   "PERUGIA": "PG",
//   "PESARO": "PS",
//   "PESCARA": "PE",
//   "PIACENZA": "PC",
//   "PISA": "PI",
//   "PISTOIA": "PT",
//   "PORDENONE": "PN",
//   "POTENZA": "PZ",
//   "PRATO": "PO",
//   "RAGUSA": "RG",
//   "RAVENNA": "RA",
//   "REGGIO CALABRIA": "RC",
//   "REGGIO EMILIA": "RE",
//   "RIETI": "RI",
//   "RIMINI": "RN",
//   "ROMA": "RM",
//   "ROVIGO": "RO",
//   "SALERNO": "SA",
//   "SASSARI": "SS",
//   "SAVONA": "SV",
//   "SIENA": "SI",
//   "SIRACUSA": "SR",
//   "SONDRIO": "SO",
//   "TARANTO": "TA",
//   "TERAMO": "TE",
//   "TERNI": "TR",
//   "TORINO": "TO",
//   "TRAPANI": "TP",
//   "TRENTO": "TN",
//   "TREVISO": "TV",
//   "TRIESTE": "TS",
//   "UDINE": "UD",
//   "VARESE": "VA",
//   "VENEZIA": "VE",
//   "VERBANIA": "VB",
//   "VERCELLI": "VC",
//   "VERONA": "VR",
//   "VIBO VALENTIA": "VV",
//   "VICENZA": "VI",
//   "VITERBO": "VT"
// };
