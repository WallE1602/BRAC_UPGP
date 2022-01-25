import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';


class LoginScreen extends StatefulWidget {

  @override
  _LoginScreenState createState() => _LoginScreenState();
}



class _LoginScreenState extends State<LoginScreen> {
  var _dataType = ['Programme Manager', 'Branch Manager'];
  var _currentData = 'Programme Manager';
  @override
  void initState() {
    super.initState();
    final player = AudioCache();
    player.play('login.wav');

  }
  //, সমৃদ্ধি'

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Image.asset(
                      'images/brac1.png',
                      scale: 1.5,
                    ),
                  ),
                  Text(' সমৃদ্ধি', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),)
                ],
              ),

              Container(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: 'User ID',
                      hintStyle: TextStyle(fontSize: 25),
                    ),
                  ),
                ),
              ),
              Container(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(fontSize: 25),
                    ),
                  ),
                ),
              ),

          DropdownButton<String>(
            items: _dataType.map((String dropDownStringItem) {
              return DropdownMenuItem<String>(
                value: dropDownStringItem,
                child: Text(dropDownStringItem),
              );
            }).toList(),
            onChanged: (String newValue) {
              setState(() {
                this._currentData = newValue;
              });
            },
            value: _currentData,
          ),

              Container(
                height: 70,
                width: 300,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: Color(0xFFD10074),
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: GestureDetector(
                    onTap:(){
                      setState(() {
                        if (_currentData == 'Programme Manager')
                        {Navigator.pushNamed(context, 'pm');}
                        else {Navigator.pushNamed(context, 'bm');}
                      });
                    } ,
                    child: Container(
                      child: Text(
                        'Sign In',
                        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child:
                Text(''
                  'Powered by HAZE',
                  style: TextStyle(

                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      wordSpacing: 5,
                      letterSpacing: 5),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
