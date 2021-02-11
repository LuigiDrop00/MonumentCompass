import 'package:flutter/material.dart';
import 'package:MonumentCompass/Registrazione.dart' as reg;
import 'package:MonumentCompass/menuPrincipale.dart' as menu;
import 'package:google_fonts/google_fonts.dart';
import 'visualizzaDettaglioCitta.dart' as visua;
import 'package:flutter_rating_bar/flutter_rating_bar.dart' as ratBar;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
              textScaleFactor: 2,
              textAlign: TextAlign.center,
            ),
            Image.asset("assets/cultura.png", width: 150,height: 150,),
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
                color: Color.fromRGBO(192, 204, 218, 1),
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
              primary: Color.fromRGBO(192, 204, 218, 1),
            ),
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
                Text("NON SEI REGISTRATO?"),
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
                  style: ElevatedButton.styleFrom(
              primary: Color.fromRGBO(192, 204, 218, 1),
            ),
                  child: Text("REGISTRATI"),
                  onPressed: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => reg.Registrazione()),
                        )
                      }),
            ),
            
            //PROVA STELLE QUI
              
            
          ],
        ),
      )),
    );
  }
}
