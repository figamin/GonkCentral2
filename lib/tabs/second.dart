import 'package:flutter/material.dart';
import 'package:side_header_list_view/side_header_list_view.dart';
var mon_classes = ["i", "ii", "ii", "iv", "v"];
var tue_classes = ["i", "ii", "ii", "iv", "v"];
var wed_classes = ["i", "ii", "ii", "iv", "v"];
var thr_classes = ["i", "ii", "ii", "iv", "v"];
var fri_classes = ["i", "ii", "ii", "iv", "v"];

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: new SideHeaderListView(itemExtend: null, headerBuilder: null, itemBuilder: null, hasSameHeader: null)
      ),
    );
  }
}
