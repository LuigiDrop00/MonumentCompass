import 'package:flutter/material.dart';

class CronologiaRicerche extends StatefulWidget {
  final String ricerca;
  CronologiaRicerche({this.ricerca});
  static List<Widget> _ricerche = [Text("RECENTI")];

  @override
  _CronologiaRicercheState createState() => _CronologiaRicercheState();
}

class _CronologiaRicercheState extends State<CronologiaRicerche> {
  @override
  void initState() {
    super.initState();
    addRicerche(widget.ricerca);
  }

  void addRicerche(String ricercaRecente) {
    if (CronologiaRicerche._ricerche.length == 3)
      CronologiaRicerche._ricerche.remove(CronologiaRicerche._ricerche[1]);
    CronologiaRicerche._ricerche.add(Row(
      children: [
        Icon(Icons.timer),
        Text(ricercaRecente),
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: CronologiaRicerche._ricerche);
  }
}
