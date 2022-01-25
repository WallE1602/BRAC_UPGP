import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

class BmInput extends StatefulWidget {
  @override
  _BmInputState createState() => _BmInputState();
}

class _BmInputState extends State<BmInput> {
  bool mVal = false;
  bool fVal = false;
  bool y1 = false;
  bool y2 = false;
  bool y3 = false;
  bool y4 = false;
  bool y5 = false;
  bool s1 = false;
  bool s2 = false;
  bool s3 = false;
  bool s4 = false;
  bool m1 = false;
  bool m2 = false;
  bool em1 = false;
  bool em2 = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final player = AudioCache();
    player.play('info.wav');
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
            ),
          ],
        ),
      ),
      body: Container(
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            SizedBox(height: 20,),
            Center(
                child: Container(
                    child: Text(
              'Population by age',
              style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline),
            ))),
            SizedBox(height: 30,),
            Text('1. Gender',
                style: TextStyle(
                  fontSize: 20,
                )),
            Card(
              color: Colors.pinkAccent.withOpacity(.5),
              margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Checkbox(
                        value: mVal,
                        onChanged: (bool value) {
                          setState(() {
                            mVal = value;
                          });
                        },
                      ),
                      Text('Male',
                          style: TextStyle(
                            fontSize: 20,
                          ))
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Checkbox(
                        value: fVal,
                        onChanged: (bool value) {
                          setState(() {
                            fVal = value;
                          });
                        },
                      ),
                      Text('Female',
                          style: TextStyle(
                            fontSize: 20,
                          ))
                    ],
                  ),
                ],
              ),
            ),
            Text('2. Age Group',
                style: TextStyle(
                  fontSize: 20,
                )),
            Card(
              color: Colors.pinkAccent.withOpacity(.5),
              margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Checkbox(
                        value: y1,
                        onChanged: (bool value) {
                          setState(() {
                            y1 = value;
                          });
                        },
                      ),
                      Text('16-30 years',
                          style: TextStyle(
                            fontSize: 20,
                          ))
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Checkbox(
                        value: y2,
                        onChanged: (bool value) {
                          setState(() {
                            y2 = value;
                          });
                        },
                      ),
                      Text('31-50 years',
                          style: TextStyle(
                            fontSize: 20,
                          ))
                    ],
                  ),/*Row(
                    children: <Widget>[
                      Checkbox(
                        value: y3,
                        onChanged: (bool value) {
                          setState(() {
                            y3 = value;
                          });
                        },
                      ),
                      Text('15-30 years',
                          style: TextStyle(
                            fontSize: 20,
                          ))
                    ],
                  ),*/
                  Row(
                    children: <Widget>[
                      Checkbox(
                        value: y4,
                        onChanged: (bool value) {
                          setState(() {
                            y4 = value;
                          });
                        },
                      ),
                      Text('50+ years',
                          style: TextStyle(
                            fontSize: 20,
                          ))
                    ],
                  ),
                  /*Row(
                    children: <Widget>[
                      Checkbox(
                        value: y5,
                        onChanged: (bool value) {
                          setState(() {
                            y5 = value;
                          });
                        },
                      ),
                      Text('45+ years',
                          style: TextStyle(
                            fontSize: 20,
                          ))
                    ],
                  ), */

                ],
              ),
            ),

            Text('3. Status',
                style: TextStyle(
                  fontSize: 20,
                )),
            Card(
              color: Colors.pinkAccent.withOpacity(.5),
              margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Checkbox(
                        value: s1,
                        onChanged: (bool value) {
                          setState(() {
                            s1 = value;
                          });
                        },
                      ),
                      Text('Group 1(50+)',
                          style: TextStyle(
                            fontSize: 20,
                          ))
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Checkbox(
                        value: s2,
                        onChanged: (bool value) {
                          setState(() {
                            s2 = value;
                          });
                        },
                      ),
                      Text('Group 2(16-30)',
                          style: TextStyle(
                            fontSize: 20,
                          ))
                    ],
                  ),Row(
                    children: <Widget>[
                      Checkbox(
                        value: s3,
                        onChanged: (bool value) {
                          setState(() {
                            s3 = value;
                          });
                        },
                      ),
                      Text('Group 3(31-50)',
                          style: TextStyle(
                            fontSize: 20,
                          ))
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Checkbox(
                        value: s4,
                        onChanged: (bool value) {
                          setState(() {
                            s4 = value;
                          });
                        },
                      ),
                      Text('Not Selected',
                          style: TextStyle(
                            fontSize: 20,
                          ))
                    ],
                  ),

                ],
              ),
            ),
            Text('4. Married?',
                style: TextStyle(
                  fontSize: 20,
                )),
            Card(
              color: Colors.pinkAccent.withOpacity(.5),
              margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Checkbox(
                        value: m1,
                        onChanged: (bool value) {
                          setState(() {
                            m1 = value;
                          });
                        },
                      ),
                      Text('Yes',
                          style: TextStyle(
                            fontSize: 20,
                          ))
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Checkbox(
                        value: m2,
                        onChanged: (bool value) {
                          setState(() {
                            m2 = value;
                          });
                        },
                      ),
                      Text('No',
                          style: TextStyle(
                            fontSize: 20,
                          ))
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Row(
              children: <Widget>[
                SizedBox(width: 10,),
                Expanded(
                  flex: 3,
                  child: Container(
                    height: 70,
                    width: 300,
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                      child: Container(
                        child: Text(
                          'Submit',
                          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 30,),
                Expanded(
                    flex: 1,
                    child: Icon(Icons.print, size: 40,))
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}
