import 'package:flutter/material.dart';

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
