import 'package:gonk_central_2/ipasslogin.dart';
import 'package:http/http.dart' as http;
import 'dart:io';
import 'package:html/parser.dart' show parse;
import 'package:html/dom.dart';
main() async {
  var loge = new IPassLogin('8458bechta', 'chexe');
  //var loge = new IPassLogin('6393anderson', 'daddad64');
  //var loge = new IPassLogin('5475moyer', 'kaiserreich');

  List<String> years = ["30", "29", "25", "24", "23", "22", "21", "20", "19", "18", "17", "16", "15", "14", "13", "12", "11"];
  for(int i = 0; i < 1; i++)
    {
      /*var doc = await loge.scheduleGet("AcadYear", years[i]);
      List<Element> ages = doc.querySelectorAll(".DATA");
      print("YEAR " + years[i] + "\n");
      for(int j = 0; j < ages.length; j++)
      {
        print(j.toString() + " " + ages[j].text);
      }*/
      var doc1 = await loge.attendGet();
      List<Element> classTitles = doc1.querySelectorAll(".Data");
      print("YEAR " + years[i] + "\n");
      for(int j = 0; j < classTitles.length; j++)
      {
        print(j.toString() + " " + classTitles[j].text);
      }
    }
}