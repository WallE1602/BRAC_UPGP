import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';

class BmDashBoard extends StatefulWidget {


  @override
  _BmDashBoardState createState() => _BmDashBoardState();
}


class _BmDashBoardState extends State<BmDashBoard> {

  @override
  void initState() {

    super.initState();
    final player = AudioCache();
    player.play('dash.wav');
  }
  var data = [50.5, 60.7, 55.2, 80.1];
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
      body: ListView(
        shrinkWrap: true,
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Card(
            color: Colors.white,
            margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('images/sassy.jpg'),
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        '  Sefatul Wasi',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17,color: Color(0xFF090C21)),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        '  Branch Manager',
                        style: TextStyle(fontSize: 13,color: Color(0xFF090C21)),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Card(
            color: Colors.white,
            margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    Text(
                      'Dashboard',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          decoration: TextDecoration.underline, color: Color(0xFF090C21)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
              Container(
                child: Sparkline(
                  data: data,
                  lineColor: Colors.blue,
                  pointsMode: PointsMode.all,
                  pointSize: 8,
                  fillMode: FillMode.below,
                  fillGradient: LinearGradient(begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.blue[800], Colors.blue[200]]),
                ),
              ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Container(
                          child: Column(
                            children: <Widget>[
                              Text(
                                '37',
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold,color: Color(0xFF090C21)),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Surveys',
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold,color: Color(0xFF090C21)),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: <Widget>[
                              Text(
                                '300',
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold,color: Color(0xFF090C21)),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Households',
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold,color: Color(0xFF090C21)),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: <Widget>[
                              Text(
                                '4',
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold,color: Color(0xFF090C21)),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'P.O',
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold,color: Color(0xFF090C21)),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                )),
          ),
          Column(

            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.pushNamed(context, 'bminput');
                        });
                      },
                      child: Card(
                        color: Colors.blue[800].withOpacity(.8),
                        margin:
                        EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Population by age',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17, ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                'Date: 12 September, 2018',
                                style: TextStyle(fontSize: 13),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.blueGrey.withOpacity(.8),
                      margin:
                      EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Assets Data',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              'Date: 08 August, 2018',
                              style: TextStyle(fontSize: 13),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        'More',
                        style: TextStyle(
                            fontSize: 15, decoration: TextDecoration.underline,color: Color(0xFF090C21)),
                      ),
                    ),
                    SizedBox(height: 20,)
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
