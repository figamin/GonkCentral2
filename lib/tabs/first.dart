import 'package:flutter/material.dart';
import 'package:html/parser.dart' show parse;
import 'package:html/dom.dart' as dom;
import 'package:gonk_central_2/ipasslogin.dart';
List<dom.Element> ages;
List<dom.Element> ages2;
List<String> placeholders = ["0", "1", "2", "3", "4", "0", "1", "2", "3", "4"];
Future gee()async{
  var loge = new IPassLogin();
  await loge.logIn('6393anderson', 'daddad64');
  var doc = parse(loge.p1.toString());
  ages = doc.querySelectorAll(".Datal");
  ages2 = doc.querySelectorAll(".DataMBl");
}
class First extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    gee().whenComplete((){
      placeholders[0] = ages2[0].text;
      placeholders[1] = ages[6].text;
      placeholders[2] = ages[7].text;
      placeholders[3] = ages[8].text;
      placeholders[4] = ages[9].text;
      placeholders[5] = ages[4].text;
    });
    return MaterialApp(
      home: Scaffold(
        body: GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          crossAxisCount: 2,
          // Generate 100 widgets that display their index in the List.
          children: <Widget>[
            Text("Name:",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            Text((placeholders[5]),
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            Text("Age:"),
            Text(placeholders[0]),
            Text("Birthplace:"),
            Text(placeholders[1]),
            Text("DOB:"),
            Text(placeholders[2]),
            Text("School Email:"),
            Text(placeholders[3]),
            Text("Ethnicity:"),
            Text(placeholders[4]),
            Text("Locker Number:"),
            Text(""),
            Text("Locker Combo:"),
            Text(""),
            Text("Phone Number:"),
            Text(""),
            Text("Bus Route:"),
            Text(""),
            Text("Guidence Counselor:"),
          ],
        ),
      ),
    );
  }
}

