import 'package:flutter/material.dart';
import 'recenti.dart' as recenti;
import 'package:MonumentCompass/visualizzaDettaglioCitta.dart';

class CartolinaCitta extends StatelessWidget {
  CartolinaCitta(
      {@required this.immagine,
      @required this.nomeCitta,
      @required this.provincia,@required this.listaEventi,@required this.listaLuoghi});
  final ImageProvider immagine;
  final String nomeCitta;
  final String provincia;
  final List<Widget> listaEventi;
  final List<Widget> listaLuoghi;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      color: Colors.lightBlue,
      child: InkWell(
        onTap: () {
          recenti.CronologiaRicerche(ricerca: this.nomeCitta);
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DettaglioCitta(
                        nomeCitta: nomeCitta,
                        immagine: immagine,
                        listaEventi: listaEventi,
                        listaLuoghi: listaLuoghi,
                        provincia: provincia,
                      )));
          //push della pagina in dettaglio con buil pattern
        },
        child: Column(
          children: [
            Stack(
              children: [
                Image(
                  image: immagine,
                  height: 100,
                  width: double.infinity,
                  fit: BoxFit.fitWidth,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                nomeCitta,
                textAlign: TextAlign.right,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
