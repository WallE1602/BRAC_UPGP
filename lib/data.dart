import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class Data extends StatefulWidget {
  @override
  _DataState createState() => _DataState();
}

List<charts.Series<Task, String>> _seriesPieData;
_generateData() {
  var pieData = [
    Task(task: '16-30 years', taskvalue: 20, colorval: Colors.blue),
    Task(task: '31-50 years', taskvalue: 30, colorval: Colors.green),
    Task(task: '50+ years', taskvalue: 60, colorval: Colors.red),
    /*Task(task: '30-45 years', taskvalue: 80, colorval: Colors.yellow),
    Task(task: '45+ years', taskvalue: 50, colorval: Colors.orange)*/
  ];
  _seriesPieData.add(
    charts.Series(
      domainFn: (Task task, _) => task.task,
      measureFn: (Task task, _) => task.taskvalue,
      colorFn: (Task task, _) => charts.ColorUtil.fromDartColor(task.colorval),
      id: 'Air Pollution',
      data: pieData,
      labelAccessorFn: (Task row, _) => '${row.taskvalue}',
    ),
  );
}

class _DataState extends State<Data> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _seriesPieData = List<charts.Series<Task, String>>();
    _generateData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              'images/brac.png',
              scale: 3,
            )
          ],
        ),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SizedBox(height: 20,),
          Text(
            'Distribution of Population by Age',textAlign: TextAlign.right,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, decoration: TextDecoration.underline),
          ),
          SizedBox(height: 50,),

          Expanded(
            child: Container(
                child: charts.PieChart(_seriesPieData,
                    animate: true,
                    animationDuration: Duration(seconds: 3),
                    behaviors: [
                  new charts.DatumLegend(
                    outsideJustification:
                        charts.OutsideJustification.endDrawArea,
                    horizontalFirst: false,
                    desiredMaxRows: 2,
                    cellPadding: new EdgeInsets.only(right: 4.0, bottom: 4.0),
                    entryTextStyle: charts.TextStyleSpec(
                        color: charts.MaterialPalette.white,
                        fontFamily: 'Georgia',
                        fontSize: 16,

                    ),
                  )

//      Sparkline(data: data,
//          lineColor: Colors.blue,
//          pointsMode: PointsMode.all,
//          pointSize: 8,),
                ])),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                child: Column(
                  children: <Widget>[
                    Text(
                      '230',
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Male',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Text(
                      '120',
                      style:
                      TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Female',
                      style:
                      TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Text(
                      '50',
                      style:
                      TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'children',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}

class Task {
  String task;
  double taskvalue;
  Color colorval;

  Task({this.task, this.taskvalue, this.colorval});
}
