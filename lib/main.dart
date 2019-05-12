import 'package:flutter/material.dart';

class GermanNumber extends StatefulWidget{ 
  @override
  LearnGermanNumber createState(){
    return LearnGermanNumber();
  }
}

class LearnGermanNumber extends State<GermanNumber>{
  int counter=0;
  List<String> germanNumbers = [
    'eins',
    'zwei',
    'drei',
    'vier',
    'fünf',
    'sechs',
    'sieben',
    'acht',
    'neun',
    'zehn',
  ];
  
  String displayText = "Welcome, Lets start!";
  String displayNumbers = "Numbers";

  void displayGerman(){
    setState(() {
      displayText = germanNumbers[counter];
      displayNumbers = (counter+1).toString();
      if(counter < 9){
        counter = counter+1;
      }else
        counter = 0;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Learn German Numbers", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.brown,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(displayText, style: TextStyle(fontSize: 37.0)),
              Padding(padding: EdgeInsets.all(20.0),),
              Text(displayNumbers, style: TextStyle(fontSize: 35.0),),
              Padding(padding: EdgeInsets.all(20.0),),
              RaisedButton(
                child: Text("Tap Me", style: TextStyle(color: Colors.white),),
                onPressed: displayGerman,
                color: Colors.teal,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Row(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
          ),
          FloatingActionButton(
            onPressed: displayGerman,
            backgroundColor: Colors.black,
            child: Icon(
              Icons.touch_app,
              color: Colors.white,
            ),
          )
        ],   
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: GermanNumber(),
  ));
}