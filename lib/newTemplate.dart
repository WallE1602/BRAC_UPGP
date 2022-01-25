import 'package:flutter/material.dart';

class NewTemplate extends StatefulWidget {
  @override
  _NewTemplateState createState() => _NewTemplateState();
}

class _NewTemplateState extends State<NewTemplate> {
  var _dataType = ['Yes/No', 'MCQ', 'Text', 'Numeric'];
  var _currentData = 'Yes/No';
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
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: TextFormField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: 'Enter Survey Title',
                hintStyle: TextStyle(fontSize: 25),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: TextFormField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: 'Send To',
                hintStyle: TextStyle(fontSize: 25),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
              child: Text(
            'Questions',
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.pinkAccent,
                decoration: TextDecoration.underline),
            textAlign: TextAlign.center,
          )),
          SizedBox(
            height: 30,
          ),
          Card(
            color: Colors.pinkAccent.withOpacity(.5),
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: 'Question',
                      hintStyle: TextStyle(fontSize: 25),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
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
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 70),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: 'Option 1*',
                      hintStyle: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: Text(
                    'Add More Options',
                    style: TextStyle(
                        fontSize: 15,
                        decoration: TextDecoration.underline,
                        color: Colors.blue),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),

              ],
            ),
          ),
          Card(
            color: Colors.pinkAccent.withOpacity(.5),
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: 'Question',
                      hintStyle: TextStyle(fontSize: 25),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
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
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 70),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: 'Option 1*',
                      hintStyle: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: Text(
                    'Add More Options',
                    style: TextStyle(
                        fontSize: 15,
                        decoration: TextDecoration.underline,
                        color: Colors.blue),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),

              ],
            ),
          ),

          Container(
            height: 50,

            margin: EdgeInsets.symmetric(horizontal: 90),
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: Color(0xFFD10074),
                borderRadius: BorderRadius.circular(30)),
            child: Center(
              child: Text(
                '+Add More Question',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
          ),

          SizedBox(height: 50,),
          Container(
            height: 70,
            width: 300,
            margin: EdgeInsets.symmetric(horizontal: 70),
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: Color(0xFFD10074),
                borderRadius: BorderRadius.circular(30)),
            child: Center(
              child: Text(
                'Send',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
