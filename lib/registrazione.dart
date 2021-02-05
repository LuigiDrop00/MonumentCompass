import 'package:flutter/material.dart';

class Registrazione extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
          child: Scaffold(
              appBar: AppBar(
                title: Text("REGISTRAZIONE"),
                actions: [
                  Container(
                      padding: EdgeInsets.only(right: 16),
                      child: IconButton(
                          icon: Icon(Icons.arrow_back),
                          onPressed: () => Navigator.pop(context)))
                ],
              ),
              body: Padding(
                padding: const EdgeInsets.all(16),
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: TextFormField(
                          decoration: InputDecoration(labelText: 'Nome utente', labelStyle: TextStyle(fontSize: 20)),
                          validator: (input) =>
                              input.contains('@') ? 'Email ' : null),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: TextFormField(
                          decoration: InputDecoration(labelText: 'Email', labelStyle: TextStyle(fontSize: 20)),
                          validator: (input) =>
                              input.contains('@') ? 'Email non valida' : null),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: TextFormField(
                          decoration: InputDecoration(labelText: 'Password', labelStyle: TextStyle(fontSize: 20)),
                          validator: (input) =>
                              input.contains('@') ? 'Email non valida' : null),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 0),
                      child: TextFormField(
                      
                          decoration:
                              InputDecoration(labelText: 'Conferma Passowrd', labelStyle: TextStyle(fontSize: 20),text ),
                          validator: (input) =>
                              input.contains('@') ? 'Email non valida' : null),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 40),
                        height: 50,
                        width: double.infinity,
                        child: ElevatedButton(
                          child: Text("REGISTRATI"),
                          onPressed: () => {},
                        )),
                    Container(
                        margin: EdgeInsets.only(top: 35),
                        height: 100,
                        width: 100,
                        child: Image(image: AssetImage("assets/cultura.png"))),
                  ],
                ),
              ))),
    );
  }
}
