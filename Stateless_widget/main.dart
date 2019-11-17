import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
      home: new MyStatelessWidget()
  ));
}

class MyStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context){

    return new Scaffold(
        appBar: new AppBar(title: new Text("Stateless Widget")),
        body: new Container(
            padding: new EdgeInsets.all(20.0),
            child: new Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[

                  new MyCard(
                      title: new Text("Hello World!", style: new TextStyle(fontSize: 20.0)),
                      icon: new Icon(Icons.public, size: 40.0, color: Colors.greenAccent)
                  ),
                  new MyCard(
                      title: new Text("Flutter is fun", style: new TextStyle(fontSize: 20.0)),
                      icon: new Icon(Icons.sentiment_satisfied, size: 40.0, color: Colors.yellow)
                  ),
                  new MyCard(
                      title: new Text("Lets code!", style: new TextStyle(fontSize: 20.0)),
                      icon: new Icon(Icons.keyboard, size: 40.0, color: Colors.blue)
                  )
                ]
            )
        )
    );
  }
}

class MyCard extends StatelessWidget {
  MyCard({this.title, this.icon});

  final Widget title;
  final Widget icon;

  @override
  Widget build(BuildContext context){
    return new Container(
        padding: new EdgeInsets.only(bottom: 20.0),
        child: new Card(
            child: new Container(
                padding: new EdgeInsets.all(15.0),
                child: new Column(
                    children: <Widget>[
                      this.title,
                      this.icon
                    ]
                )
            )

        )
    );
  }
}
