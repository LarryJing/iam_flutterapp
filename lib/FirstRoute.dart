import 'package:flutter/material.dart';
import 'package:iamapp/SecondRoute.dart';
import 'package:iamapp/ThirdRoute.dart';

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
double opacity = 0.9;

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
