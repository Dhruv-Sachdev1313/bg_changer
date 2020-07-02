import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Background Changer',
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Random Background'),
        ),
        body: HomePage(),
      ),
      

    );
  }
}

class HomePage extends StatefulWidget {
  @override
   _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {

  var colors =[
    Colors.amber,
    Colors.black,
    Colors.blue,
    Colors.yellow,
    Colors.green,
    Colors.red,
    Colors.pink,
    Colors.orange
  ];
  var currentColor = Colors.white;
  var buttonColor = Colors.black;

  setRandomColor(){
    var rnd = Random().nextInt(colors.length);
    var rnd1 = Random().nextInt(colors.length);
    setState(() {
      currentColor = colors[rnd];
      buttonColor = colors[rnd1];
    });    
  }

   @override
   Widget build(BuildContext context) {
    return Container(
      color: currentColor,
      child: Center(
        child: ButtonTheme(
          height: 60.0,
          minWidth: 350.0,
          child: RaisedButton(
            color: buttonColor,
            padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            child: Text(
              'Change it!',
              style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),
            ),
            onPressed: setRandomColor,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(60.0))
        ),

        ),
      ),
        
    );
  }
} 


