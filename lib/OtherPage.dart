import 'package:flutter/material.dart';

class OtherPage extends StatefulWidget {

  OtherPage({Key key}) : super(key: key);

  @override 
  _OtherState createState() => _OtherState();
}

class _OtherState extends State<OtherPage> {

  String tile2 = 'uuuu';

  @override
  Widget build(BuildContext context) => 
    Scaffold(
      appBar: AppBar(
        title: Text(tile2)
      )
    );

}