import 'dart:async';

import 'package:flutter/material.dart';

class OtherPage extends StatelessWidget {

  final CounterBloc _bloc = CounterBloc();

  OtherPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("counter with bloc"),
      ),
      body: StreamBuilder(
        stream:_bloc.counter, 
        builder: (context,snapshot) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("aaa ${snapshot.data}")
              ],
            )
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _bloc.increment,
        tooltip: 'Increment',
        child: Icon(Icons.add_alert),
        backgroundColor: Colors.red,
      ), // This tr
    );
  }
}

class CounterBloc {
  StreamController _con = StreamController();
  Stream get counter => _con.stream;

  void increment() {
    _con.add(DateTime.now().millisecondsSinceEpoch);
  }
}