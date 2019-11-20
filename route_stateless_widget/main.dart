import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
      home: new HomePage(),
      routes: <String, WidgetBuilder>{
        "/SecondPage": (BuildContext context) => new SecondPage()
      }
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new Scaffold(
        appBar: new AppBar(title: new Text("Home"), backgroundColor: Colors.red),
        body: new Container(
            child: new Center(
                child: new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new IconButton(
                          icon: new Icon(Icons.arrow_forward, color: Colors.redAccent),
                          iconSize: 70.0,
                          onPressed: () {Navigator.of(context).pushNamed("/SecondPage");}
                      ),
                      new Text("Second Page")
                    ]
                )
            )
        )
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new Scaffold(
        appBar: new AppBar(title: new Text("Second Page"), backgroundColor: Colors.blue),
        body: new Container(
            child: new Center(
                child: new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new IconButton(
                        icon: new Icon(Icons.arrow_back, color: Colors.blue),
                        iconSize: 70.0,
                        onPressed: null,
                      ),
                      new Text("Home Page")
                    ]
                )
            )
        )
    );
  }
}
