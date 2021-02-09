import 'package:flutter/material.dart';
import 'recenti.dart' as recenti;
class CartolinaCitta extends StatelessWidget {
  CartolinaCitta({@required this.immagine, @required this.nomeCitta});
  final ImageProvider immagine;
  final String nomeCitta;

  Widget stampaStelle() {
    List<Widget> stelle = [];
    for (var i = 0; i < 5; i++) {
      stelle.add(Icon(Icons.star_rate));
    }
    return Row(children: []);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          recenti.CronologiaRicerche(ricerca: this.nomeCitta);
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
                IconButton(
                  iconSize: 35,
                  color: Colors.red,
                  icon: Icon(Icons.favorite),
                  onPressed: () => {},
                )
              ],
            ),
            Text(nomeCitta, textAlign: TextAlign.right),
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
    );
  }
}
