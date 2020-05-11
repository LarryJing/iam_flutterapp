import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: FirstRoute(),
  ));
}

var poorText = Text(
  'Poor',
  style: new TextStyle(
    fontSize: 75.0,
    letterSpacing: 15,
    color: Color(0xffB46200),
  ),
);

var richText = Text(
  'Rich',
  style: new TextStyle(
    fontSize: 75.0,
    letterSpacing: 15,
    color: Colors.cyanAccent,
  ),
);
var opacity = 0.9;

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    opacity = 0.9;
    return Scaffold(
      // use a stack widget
      body: Stack(
        children: [
          // text to display over buttons
          Align(
            // set alignment to center to place it over the buttons
            alignment: Alignment.center,
            child: Text(
              'I AM',
              // give it your style
              style: TextStyle(
                  fontSize: 150,
                  letterSpacing: 15,
                  wordSpacing: 25,
                  color: Color(0xff13FF00),
                  shadows: [
                    Shadow(
                        // bottomLeft
                        offset: Offset(-5.5, -5.5),
                        color: Colors.black),
                    Shadow(
                        // bottomRight
                        offset: Offset(5.5, -5.5),
                        color: Colors.black),
                    Shadow(
                        // topRight
                        offset: Offset(5.5, 5.5),
                        color: Colors.black),
                    Shadow(
                        // topLeft
                        offset: Offset(-5.5, 5.5),
                        color: Colors.black),
                  ]),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                AnimatedOpacity(
                  duration: new Duration(hours: 0, minutes: 0, seconds: 5),
                  opacity: opacity,
                  child: Container(
                    height: (MediaQuery.of(context).size.height) / 2,
                    width: MediaQuery.of(context).size.width,
                    child: RaisedButton(
                      color: Colors.black87,
                      child: poorText,
                      onPressed: () {
                        opacity = 0;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SecondRoute()),
                        );
                      },
                    ),
                  ),
                ),
                AnimatedOpacity(
                  duration: new Duration(hours: 0, minutes: 0, seconds: 5),
                  opacity: opacity,
                  child: Container(
                    height: (MediaQuery.of(context).size.height) / 2,
                    width: MediaQuery.of(context).size.width,
                    child: RaisedButton(
                      color: Colors.black87,
                      child: richText,
                      onPressed: () {
                        opacity = 0;
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ThirdRoute()),
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff180C00),
      appBar: AppBar(
        title: Text("I Am Poor"),
        backgroundColor: Color(0xff8B8B8B),
      ),
      body: Center(
        child: Image(
          image: AssetImage('images/penny.png'),
        ),
      ),
    );
  }
}

class ThirdRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text("I Am Rich"),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: Center(
        child: Image(
          image: AssetImage('images/diamond.png'),
        ),
      ),
    );
  }
}
