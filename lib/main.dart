import 'package:flutter/material.dart';
import 'package:udemy/test.dart';

void main() => runApp(new MyClass());

class MyClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App Flutter',
      home: Scaffold(
          appBar: AppBar(
            elevation: 10.0,
            title: Center(child:Text('Title'),
            ), 
            actions: <Widget>[Icon(Icons.settings)],
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20.0),
              child: Text('Tulisan di app bar'),
            ),
          ),
          body: ihaClass()),
    );
  }
}
