import 'package:flutter/material.dart';

class CartolinaMonumento extends StatelessWidget {
  CartolinaMonumento({@required this.immagine,@required this.title,this.evento,this.numeroStelle});
  final ImageProvider immagine;
  final String title;
  final String evento;
  final int numeroStelle;
  List<Widget> stelle = [];

  List<Widget> creaStelle(){
    List<Widget> stampaStelle = [];
    for(var i = 0;i == 5; i++){
      if (i == numeroStelle) stampaStelle.add(Icon(Icons.star_border));
      else stampaStelle.add(Icon(Icons.star_border));
    }
    return stampaStelle;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      
      child: Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:8.0),
                child: Image(
                  image: AssetImage("assets/Ponza00.jpg"),
                  height: 120,
                  width: 140,
                  
                ),
              ),
              IconButton(
                iconSize: 35,
                color: Colors.red,
                icon: Icon(Icons.favorite),
                onPressed: () => {},
              )
            ],
          ),
          Text(title, textAlign: TextAlign.right,),
          Text("6 nov 2020"),
          Row(children: [...creaStelle()], mainAxisAlignment: MainAxisAlignment.center,),
        ],
      ),
    );
  }
}
