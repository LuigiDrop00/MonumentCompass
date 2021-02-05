import 'package:flutter/cupertino.dart';

class CronologiaRicerche extends StatefulWidget {
  @override
  _CronologiaRicercheState createState() => _CronologiaRicercheState();
}

class _CronologiaRicercheState extends State<CronologiaRicerche> {
  List _ricerche = [];
  List getRicerche() => _ricerche;

  void addRicerche(String value) {
    _ricerche.add(value);
    if (_ricerche.length == 3) _ricerche.remove(_ricerche.first);
  }

  @override
  Widget build(BuildContext context) {

    return ListView(children: _ricerche,);
  }
}
