import 'package:flutter/material.dart';
import 'package:MonumentCompass/Registrazione.dart' as reg;
import 'package:MonumentCompass/menuPrincipale.dart' as menu;
import 'package:google_fonts/google_fonts.dart';
import 'visualizzaDettaglioCitta.dart' as visua;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MonumentCompass(),
    );
  }
}

class MonumentCompass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding:
            const EdgeInsets.only(top: 80, right: 25, bottom: 16, left: 25),
        child: ListView(
          children: [
            Text(
              "MONUMENT COMPASS",
              style: GoogleFonts.grandHotel(color: Colors.black, fontSize: 20),
              textScaleFactor: 1.8,
              textAlign: TextAlign.center,
            ),
            Icon(Icons.art_track, size: 100),
            Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                      decoration:
                          InputDecoration(labelText: 'Email o Nome utente'),
                      validator: (input) =>
                          input.contains('@') ? 'Email non valida' : null),
                  TextFormField(
                      decoration: InputDecoration(labelText: 'Password'),
                      validator: (input) => input.length < 6
                          ? 'Deve essere piu grande di 6'
                          : null,
                      obscureText: true)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24.0),
              child: Container(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                    child: Text("ENTRA"),
                    onPressed: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => menu.MenuPrincipale()),
                          )
                        }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: Row(children: <Widget>[
                Expanded(child: Divider(thickness: 2)),
                Text("  NON SEI REGISTRATO?"),
                Expanded(
                    child: Divider(
                  thickness: 2,
                )),
              ]),
            ),
            Container(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                  child: Text("REGISTRATI"),
                  onPressed: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => reg.Registrazione()),
                        )
                      }),
            ),
            ElevatedButton(
              child: Text("prova pag dettaglio"),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => visua.DettaglioCitta(
                            immagine: AssetImage("assets/Ponza00.jpg"), title: "Ponza",
                          ))),
            )
          ],
        ),
      )),
    );
  }
}
