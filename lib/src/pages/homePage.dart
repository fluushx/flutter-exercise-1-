import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  final style = TextStyle(fontSize: 20);
  var counter = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Title'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Numero de clicks', style: style),
            Text("$counter", style: style),
          ],
        ),
      ),
      floatingActionButton: _createdButtons(),
    );
  }

  int contador() {
    counter += 1;
    print(counter);
    return counter;
  }

  Widget _createdButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FloatingActionButton(child: Icon(Icons.add), onPressed: null),
        SizedBox(width: 100),
        FloatingActionButton(child: Icon(Icons.remove), onPressed: null),
        SizedBox(width: 100),
        FloatingActionButton(child: Icon(Icons.exposure_zero), onPressed: null)
      ],
    );
  }
}
