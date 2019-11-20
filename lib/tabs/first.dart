import 'package:flutter/material.dart';
import 'package:html/parser.dart' show parse;
import 'package:html/dom.dart' as dom;
import 'package:gonk_central_2/ipasslogin.dart';
List<dom.Element> data;
List<dom.Element> folks;
String name = "_", age = "_", bplc = "_", dob = "_",
email = "_", eth = "_", lnum = "_", lcom = "_", pnum1 = "_",
pnum2 = "_", pnum3 = "_", pt1 = "_", pt2 = "_", sloc = "_",
gloc = "_", zip = "_", gc = "_", bus = "_", grad = "_";
Future gee()async{
  var loge = new IPassLogin();
  await loge.logIn('8458bechta', 'mylife');
  //await loge.logIn('6393anderson', 'daddad64');
  var doc = parse(loge.p1.toString());
  data = doc.querySelectorAll(".Datal");
  folks = doc.querySelectorAll(".DataMBl");
}
class First extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    gee().whenComplete((){
      //bool graduated = int.parse(data[3].text) < DateTime.now().year || (int.parse(ages[3].text) == DateTime.now().year && DateTime.now().month >= 6)
      bool graduated = data[1].text.substring(2, 3) == 'G';
      age = folks[0].text;
      gc = data[2].text;
      name = data[4].text;
      bplc = data[6].text;
      dob = data[7].text;
      email = data[8].text;
      eth = data[9].text;
      sloc = data[12].text + " " + data[13].text;
      gloc = data[16].text + " " + data[17].text;
      zip = data[18].text;
      pt1 = folks[1].text;
      pt2 = folks[3].text;
      bus = data[49].text;
      pnum1 = data[30].text;
      pnum2 = data[34].text;
      pnum3 = data[38].text;
      if(graduated)
        {
          lnum = "N/A";
          lcom = "N/A";
          grad = "Yes";
        }
      else
        {
          lnum = data[10].text;
          lcom = data[11].text;
          grad = "No";
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
            Text(name,
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            Text("Age:",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            Text(age,
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            Text("Birthplace:",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            Text(bplc,
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            Text("DOB:",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            Text(dob,
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            Text("School Email:",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            Text(email,
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            Text("Ethnicity:",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            Text(eth,
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            Text("Locker Number:",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            Text(lnum,
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            Text("Locker Combo:",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            Text(lcom,
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            Text("Phone Number 1:",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            Text(pnum1,
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            Text("Phone Number 2:",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            Text(pnum2,
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            Text("Phone Number 3:",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            Text(pnum3,
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            Text("Street Name:",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            Text(sloc,
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            Text("City and State:",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            Text(gloc,
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            Text("Bus Route:",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            Text(bus,
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            Text("Guidence Counselor:",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            Text(gc,
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            Text("Parent 1:",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            Text(pt1,
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            Text("Parent 2:",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            Text(pt2,
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            Text("Graduated:",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            Text(grad,
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
          ],
        ),
      ),
    );
  }
}

