import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart' as ico;

class DoveAndare extends StatefulWidget {
  @override
  _DoveAndareState createState() => _DoveAndareState();
}

class _DoveAndareState extends State<DoveAndare> {

  TextEditingController _luogo = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(
      child: Scaffold(
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
                controller: _luogo,
                style: TextStyle(fontSize: 20),
                decoration: InputDecoration(
                    suffixIcon: Icon(ico.FontAwesome5.map_marked_alt),
                    border: UnderlineInputBorder(borderSide: BorderSide(width: 3)),
                    hintText: 'Digita un luogo...'),
              ),
              ElevatedButton(onPressed: () => print(_luogo.text), child: Text("stampa luogo sulla console"))
            ],
          ),
        ),
      ),
    ));
  }
}
