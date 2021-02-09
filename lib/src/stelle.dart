import 'package:flutter/material.dart';

class Stelle extends StatefulWidget {

  @override
  _StelleState createState() => _StelleState();
}

class _StelleState extends State<Stelle> {
  void creaStelle(){
    List<Widget> stampaStelle = [];
    for(var i = 0;i == 5; i++){
      if (i == numeroStelle) stampaStelle.add(Icon(Icons.star_border));
      else stampaStelle.add(Icon(Icons.star_border));
    }
    stelle = stampaStelle;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      
    );
  }
}