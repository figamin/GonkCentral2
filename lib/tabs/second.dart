import 'package:flutter/material.dart';
import 'package:gonk_central_2/shedclass.dart';
import 'package:side_header_list_view/side_header_list_view.dart';
import 'package:gonk_central_2/ipasslogin.dart';
import 'package:html/parser.dart' show parse;
import 'package:html/dom.dart' as dom;

int counter = 0;
List<dom.Element> data;
List<List<ScheduleClass>> week = new List<List<ScheduleClass>>(5);
List<String> days = ["M", "T", "W", "R", "F"];
Future gee()async{
  var loge = new IPassLogin();
  await loge.logIn2('8458bechta', 'mylife');
  //await loge.logIn('6393anderson', 'daddad64');
  var doc = parse(loge.p2.toString());
  data = doc.querySelectorAll(".Data");
  week[0][0] = (new ScheduleClass(data[2].text, data[3].text, data[4].text, data[6].text, days[0]));
  week[0][1] = (new ScheduleClass(data[32].text, data[33].text, data[34].text, data[36].text, days[0]));
  week[0][2] = (new ScheduleClass(data[62].text, data[63].text, data[64].text, data[66].text, days[0]));
  week[0][3] = (new ScheduleClass(data[92].text, data[93].text, data[94].text, data[96].text, days[0]));
  week[0][4] = (new ScheduleClass(data[122].text, data[123].text, data[124].text, data[126].text, days[0]));
  week[0][5] = (new ScheduleClass(data[157].text, data[158].text, data[159].text, data[161].text, days[0]));
  week[0][6] = (new ScheduleClass(data[187].text, data[188].text, data[189].text, data[181].text, days[0]));
  week[1][0] = (new ScheduleClass(week[0][0].name, week[0][0].teacher, week[0][0].room, data[13].text, days[1]));
  week[1][1] = (new ScheduleClass(week[0][2].name, week[0][2].teacher, week[0][2].room, data[73].text, days[1]));
  week[1][2] = (new ScheduleClass(week[0][3].name, week[0][3].teacher, week[0][3].room, data[103].text, days[1]));
  week[1][3] = (new ScheduleClass(week[0][4].name, week[0][4].teacher, week[0][4].room, data[133].text, days[1]));
  week[1][4] = (new ScheduleClass(week[0][5].name, week[0][5].teacher, week[0][5].room, data[168].text, days[1]));
}
class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    for(int i = 0; i < 7; i++)
      {
        week[0].add(new ScheduleClass("_", "_", "_", "_", "_"));
      }
    for(int i = 0; i < 5; i++)
    {
      week[1].add(new ScheduleClass("_", "_", "_", "_", "_"));
    }
    gee().whenComplete((){
      for(int i = 0; i < week[0].length; i++)
        {
          print(week[0][i].toString() + "\n\n");
        }
      print("\n\n\n\n");
      for(int i = 0; i < week[1].length; i++)
      {
        print(week[1][i].toString() + "\n\n");
      }
    });
    return MaterialApp(
      home: Scaffold(
        body: new SideHeaderListView(
          itemCount: 31,
          padding: new EdgeInsets.all(16),
          itemExtend: 48.0,
          headerBuilder: (BuildContext context, int index) {
            return new SizedBox(width: 32.0,child: new Text("head", style: Theme.of(context).textTheme.headline,));
          },
          itemBuilder: (BuildContext context, int index) {
            return new Text("test", style: Theme.of(context).textTheme.headline,);
          },
          hasSameHeader: (int a, int b) {
            counter++;
            if(counter == 7)
              {
                counter = 1;
                return false;
              }
            else
              {
                return true;
              }
          },
        )
      ),
    );
  }
}
