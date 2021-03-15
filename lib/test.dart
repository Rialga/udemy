import 'dart:math';

import 'package:toast/toast.dart';
import 'package:flutter/material.dart';

class ihaClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.yellowAccent,
      child: Container(
        height: 500,
        width: 300,
        alignment: Alignment(0, 0),
        decoration: BoxDecoration(
            gradient: RadialGradient(colors: [
          Colors.green,
          Colors.blue,
          Colors.orange,
          Colors.purple
        ], stops: [
          0.2,
          0.5,
          0.7,
          1
        ], center: Alignment(0.1, 0.3), focal: Alignment(-0.1, 0.6))),
        child: GestureDetector(
          onLongPress: () {
            Toast.show(
                "Toast plugin app", 
                context,
                duration: Toast.LENGTH_SHORT, 
                gravity: Toast.BOTTOM
            );
            
            Scaffold.of(context).showSnackBar(new SnackBar(
              content: new Text('Pencet'),
              duration: Duration(seconds: 2),
            ));
          },
          child: Text(
            rand(),
            textDirection: TextDirection.ltr,
          ),
        ),
      ),
    );
  }

  String rand() {
    var r = Random();
    int i = r.nextInt(20);
    return 'Coba random 0 - 20 adalah ${i}';
  }
}
