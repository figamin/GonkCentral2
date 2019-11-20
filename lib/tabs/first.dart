import 'package:flutter/material.dart';
import 'package:html/parser.dart' show parse;
import 'package:html/dom.dart' as dom;
import 'package:gonk_central_2/ipasslogin.dart';
List<dom.Element> ages;
List<dom.Element> ages2;
List<String> placeholders = ["0", "1", "2", "3", "4", "0", "1", "2", "3", "4", "0", "1", "2", "3", "4", "0", "1", "2", "3", "4"];
Future gee()async{
  var loge = new IPassLogin();
  await loge.logIn('8458bechta', 'mylife');
  var doc = parse(loge.p1.toString());
  ages = doc.querySelectorAll(".Datal");
  ages2 = doc.querySelectorAll(".DataMBl");
}
class First extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    gee().whenComplete((){
      bool graduated = int.parse(ages[3].text) < DateTime.now().year || (int.parse(ages[3].text) == DateTime.now().year && DateTime.now().month >= 6)
      if(graduated)
        {
          placeholders[0] = ages2[0].text;
          placeholders[1] = ages[6].text;
          placeholders[2] = ages[7].text;
          placeholders[3] = ages[8].text;
          placeholders[4] = ages[9].text;
          placeholders[5] = ages[4].text;
          placeholders[6] = ages[34].text;
          placeholders[7] = ages[46].text;
          placeholders[8] = ages[2].text;
        }
      else
        {
          placeholders[0] =
          placeholders[1] =
          placeholders[2] =
          placeholders[3] =
          placeholders[4] =
          placeholders[5] =
          placeholders[6] =
          placeholders[7] =
          placeholders[8] =
        }
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
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),               ),
            Text(placeholders[5],
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            Text("Age:",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            Text(placeholders[0],
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            Text("Birthplace:",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            Text(placeholders[1],
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            Text("DOB:",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            Text(placeholders[2],
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            Text("School Email:",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            Text(placeholders[3],
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            Text("Ethnicity:",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            Text(placeholders[4],
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            Text("Locker Number:",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            Text("N/A",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            Text("Locker Combo:",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            Text("N/A",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            Text("Phone Number:",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            Text(placeholders[5],
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            Text("Bus Route:",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            Text(placeholders[6],
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            Text("Guidence Counselor:",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            Text(placeholders[7],
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
          ],
        ),
      ),
    );
  }
}

