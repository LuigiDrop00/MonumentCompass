import 'package:MonumentCompass/bottomNavigationPages/tabs/preferiti.dart'
    as pref;
import 'package:flutter/material.dart';
import 'package:MonumentCompass/visualizzaDettaglioEvento.dart' as dettEveMonu;

class CartolinaMonumento extends StatelessWidget {
  CartolinaMonumento(
      {@required this.immagine,
      @required this.nomeMonumento,
      this.dataEvento,
      @required this.numeroStelle,
      @required this.descrizione});

  final String descrizione;
  final ImageProvider immagine;
  final String nomeMonumento;
  final String dataEvento;
  final int numeroStelle;
  static Icon icon = Icon(Icons.favorite);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10),
      child: Container(
        margin: EdgeInsets.zero,
        child: Card(
          elevation: 6,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Stack(
                alignment: Alignment.topLeft,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => dettEveMonu.DettaglioEvento(
                                  immagine: this.immagine,
                                  nomeEvento: this.nomeMonumento,
                                  descrizione: this.descrizione,))),
                      child: Image(
                        image: immagine,
                        height: 135,
                        width: 160,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  IconButton(
                    iconSize: 35,
                    color: Colors.red,
                    icon: icon,
                    onPressed: () {
                      pref.Preferiti.preferiti.add(this);
                    },
                  )
                ],
              ),
              Text(
                nomeMonumento,
                textAlign: TextAlign.right,
              ),
              Text("$dataEvento"),
              Row(
                children: [
                  Icon(Icons.star),
                  Icon(Icons.star),
                  Icon(Icons.star),
                  Icon(Icons.star),
                  Icon(Icons.star)
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
