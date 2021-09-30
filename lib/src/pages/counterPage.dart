import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ContadorPageState();
  }
}

class _ContadorPageState extends State {
  @override
  var counter = 0;
  final style = TextStyle(fontSize: 20);
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: _createdButtons(),
    );
  }

  Widget _createdButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FloatingActionButton(
            child: Icon(Icons.add), onPressed: aumentarContador),
        SizedBox(width: 100),
        FloatingActionButton(
            child: Icon(Icons.remove), onPressed: decrentarContador),
        SizedBox(height: 20.0),
        SizedBox(width: 50),
        FloatingActionButton(
            child: Icon(Icons.exposure_zero), onPressed: igualarZero),
      ],
    );
  }

  int aumentarContador() {
    print(counter);
    setState(() {
      counter++;
    });
    return counter;
  }

  int decrentarContador() {
    print(counter);
    setState(() {
      counter--;
    });
    return counter;
  }

  int igualarZero() {
    print(counter);
    setState(() {
      counter = 0;
    });
    return counter;
  }
}
