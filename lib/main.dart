import 'package:flutter/material.dart';

void main() => runApp(
      new MaterialApp(
        home: MyApp(),
      ),
    );

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void _showAlertDialogBox(BuildContext tempContext) {
    showDialog(
      context: tempContext,
      child: new AlertDialog(
        //Basic of the Alert Dialog Box

        title: new Text("My Title"), // Title of the Alert Dialog Box
        content: new Text("My Content"), // Content of the Alert Dialog Box
        actions: <Widget>[
          // Buttons or any other actions
          new FlatButton(
            child: new Text("OKAY"),
            onPressed: () => Navigator.pop(context),
          ),
        ],

        //Advanced variables of the Alert Dialog Box

        shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(
                15)), // Make your alert dialog box boreders circular
        backgroundColor: Colors
            .amberAccent, //change the background colour of the aert dialog box
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
      return new Scaffold(
        appBar: new AppBar(
          title: new Text("Alert Dialog Box Demo!"),
        ),
        body: new Center(
          child: new RaisedButton(
            child: new Text(
              "CLICK ME",
              style: new TextStyle(color: Colors.white),
            ),
            color: Colors.lightBlue,
            onPressed: () {
              _showAlertDialogBox(context);
            },
          ),
        ),
      );
  }
}
