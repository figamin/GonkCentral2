import 'package:gonk_central_2/ipasslogin.dart';
import 'package:http/http.dart' as http;
import 'dart:io';
import 'package:html/parser.dart' show parse;
import 'package:html/dom.dart';
main() async {
  var loge = new IPassLogin();
  await loge.logIn('8458bechta', 'mylife');
  var doc = parse(loge.p1.toString());
  List<Element> ages = doc.querySelectorAll(".Datal");
  for(int i = 0; i < ages.length; i++)
    {
      print(i.toString() + " " + ages[i].text);
    }
  List<Element> ages2 = doc.querySelectorAll(".DataMBl");
  for(int i = 0; i < ages2.length; i++)
  {
    print(i.toString() + " " + ages2[i].text);
  }
}