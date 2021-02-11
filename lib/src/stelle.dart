import 'package:flutter/material.dart';

class Stelle {

  Stelle(this.numStelle);
  int numStelle;

  Row creaStelle(){
    List<Widget> stampaStelle = [];
    for(var i = 0;i == 5; i++){
      if (i == numStelle) stampaStelle.add(Icon(Icons.star_border));
      else stampaStelle.add(Icon(Icons.star_border));
    }
    return Row(children: [
      ...stampaStelle
    ]);
  }
}