import 'package:flutter/material.dart';
import 'package:gonk_central_2/shedclass.dart';
import 'package:side_header_list_view/side_header_list_view.dart';
import 'package:gonk_central_2/ipasslogin.dart';
import 'package:html/dom.dart' as dom;

int counter = 0;
List<dom.Element> data;
List<ScheduleClass> week = new List<ScheduleClass>(29);
List<String> days = ["M", "T", "W", "Th", "F"];
Future gee()async{
  var loge = new IPassLogin('8458bechta', 'chexe');
  var doc = await loge.scheduleGet("AcadYear", "30");
  data = doc.querySelectorAll(".DATA");
  print("DOING");
}
class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    for(int i = 0; i < 29; i++)
      {
        week[i] = (new ScheduleClass("_", "_", "_", "_", "_"));
      }
    gee().whenComplete((){
      week[0] = new ScheduleClass(data[2].text, data[3].text, data[4].text, data[6].text, days[0]);
      week[1] = new ScheduleClass(data[32].text, data[33].text, data[34].text, data[36].text, days[0]);
      week[2] = new ScheduleClass(data[62].text, data[63].text, data[64].text, data[66].text, days[0]);
      week[3] = new ScheduleClass(data[92].text, data[93].text, data[94].text, data[96].text, days[0]);
      week[4] = new ScheduleClass(data[122].text, data[123].text, data[124].text, data[126].text, days[0]);
      week[5] = new ScheduleClass(data[157].text, data[158].text, data[159].text, data[161].text, days[0]);
      week[6] = new ScheduleClass(data[187].text, data[188].text, data[189].text, data[181].text, days[0]);
      // j
      week[7] = new ScheduleClass(week[0].name, week[0].teacher, week[0].room, data[13].text, days[1]);
      week[8] = new ScheduleClass(week[2].name, week[2].teacher, week[2].room, data[73].text, days[1]);
      week[9] = new ScheduleClass(week[3].name, week[3].teacher, week[3].room, data[103].text, days[1]);
      week[10] = new ScheduleClass(week[4].name, week[4].teacher, week[4].room, data[133].text, days[1]);
      week[11] = new ScheduleClass(week[5].name, week[5].teacher, week[5].room, data[168].text, days[1]);
      // j
      week[12] = new ScheduleClass(week[1].name, week[1].teacher, week[1].room, data[45].text, days[2]);
      week[13] = new ScheduleClass(week[2].name, week[2].teacher, week[2].room, data[80].text, days[2]);
      week[14] = new ScheduleClass(week[3].name, week[3].teacher, week[3].room, data[110].text, days[2]);
      week[15] = new ScheduleClass(week[4].name, week[4].teacher, week[4].room, data[140].text, days[2]);
      week[16] = new ScheduleClass(week[5].name, week[5].teacher, week[5].room, data[175].text, days[2]);
      week[17] = new ScheduleClass(week[6].name, week[6].teacher, week[6].room, data[200].text, days[2]);
      //j
      week[18] = new ScheduleClass(week[0].name, week[0].teacher, week[0].room, data[22].text, days[3]);
      week[19] = new ScheduleClass(week[1].name, week[1].teacher, week[1].room, data[52].text, days[3]);
      week[20] = new ScheduleClass(week[2].name, week[2].teacher, week[2].room, data[87].text, days[3]);
      week[21] = new ScheduleClass(week[4].name, week[4].teacher, week[4].room, data[147].text, days[3]);
      week[22] = new ScheduleClass(week[6].name, week[6].teacher, week[6].room, data[207].text, days[3]);
      //j
      week[23] = new ScheduleClass(week[0].name, week[0].teacher, week[0].room, data[29].text, days[4]);
      week[24] = new ScheduleClass(week[1].name, week[1].teacher, week[1].room, data[59].text, days[4]);
      week[25] = new ScheduleClass(week[3].name, week[3].teacher, week[3].room, data[119].text, days[4]);
      week[26] = new ScheduleClass(week[4].name, week[4].teacher, week[4].room, data[154].text, days[4]);
      week[27] = new ScheduleClass(week[5].name, week[5].teacher, week[5].room, data[184].text, days[4]);
      week[28] = new ScheduleClass(week[6].name, week[6].teacher, week[6].room, data[214].text, days[4]);
    });
    return MaterialApp(
      home: Scaffold(
        body: new SideHeaderListView(
          itemCount: 29,
          padding: new EdgeInsets.all(16),
          itemExtend: 200.0,
          headerBuilder: (BuildContext context, int index) {
            return new SizedBox(width: 32.0,child: new Text(week[index].date, style: Theme.of(context).textTheme.headline,));
          },
          itemBuilder: (BuildContext context, int index) {
            return new Text(week[index].toString(), style: Theme.of(context).textTheme.headline,);
          },
          hasSameHeader: (int a, int b) {
            return week[a].date == week[b].date;
          },
        )
      ),
    );
  }
}
