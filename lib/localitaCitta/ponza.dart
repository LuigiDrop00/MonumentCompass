import 'package:flutter/material.dart';
import 'package:MonumentCompass/src/cartolinaMonumenti.dart' as cardMon;

class Ponza {

  static const nomeCitta = "Ponza";
  static const ImageProvider immaginePonza = AssetImage("assets/ponza/Ponza.jpg");
  static const String provincia = "(LT)";
  static const String bacon = "Bacon ipsum dolor amet jowl tongue meatball pork loin sirloin. Frankfurter meatball strip steak chislic shoulder ribeye turducken picanha pork. Boudin beef spare ribs andouille pork ham hock meatloaf, tongue pastrami buffalo frankfurter.";
  static List<Widget> eventi = [
        cardMon.CartolinaMonumento(immagine: NetworkImage("https://static.fanpage.it/wp-content/uploads/sites/21/2017/02/zeppole-di-patate.jpg"), nomeMonumento: "Sagra Zeppole", dataEvento: " 18 Marzo ", numeroStelle: 3,descrizione: bacon ,),
        cardMon.CartolinaMonumento(immagine: NetworkImage("https://i.ytimg.com/vi/OrI0qq6sF6w/maxresdefault.jpg"),nomeMonumento: "Serata Musicale",numeroStelle: 4,dataEvento: "18 Giugno",descrizione: bacon),
        cardMon.CartolinaMonumento(immagine: NetworkImage("https://www.visitlazio.com/web/wp-content/uploads/2019/06/ponzasilverio.jpg"),nomeMonumento: "Festa S.Silverio",numeroStelle: 5,dataEvento: "20 Giugno",descrizione: bacon ,),
        cardMon.CartolinaMonumento(immagine: NetworkImage("http://www.podistico.it/volantini/2018_07/9642_1__18-Giro-Podistico-Isola-di-Ponza-luglio-2018-LT.jpg") ,nomeMonumento: "Giro Podistico Ponza",numeroStelle: 2,dataEvento: "1-5 Luglio",descrizione: bacon,),
  ];
  static List<Widget> luoghi = [
        cardMon.CartolinaMonumento(immagine: NetworkImage("https://i.ytimg.com/vi/Ca-YQE4MzEI/maxresdefault.jpg"),nomeMonumento: "Grotte di Pilato",dataEvento: "",numeroStelle: 2,descrizione: bacon),
        cardMon.CartolinaMonumento(immagine: AssetImage("assets/ponza/teatroPonza.png"), nomeMonumento: "Teatro Ponza", dataEvento: "", numeroStelle: 3,descrizione: bacon),
        cardMon.CartolinaMonumento(immagine: NetworkImage("http://www.prolocodiponza.it/media/k2/items/cache/66e8215c782a44521482ab938e79c393_L.jpg"),nomeMonumento: "Monumento Jancos",numeroStelle: 4, dataEvento: "",descrizione: bacon),
        cardMon.CartolinaMonumento(immagine: NetworkImage("http://www.prolocodiponza.it/media/k2/items/cache/377829b055e89e3afb894e7528a10996_L.jpg"),nomeMonumento: "Cala Cecata",numeroStelle: 5,dataEvento: "",descrizione: bacon)
  ];

}