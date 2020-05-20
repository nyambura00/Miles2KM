import 'package:flutter/material.dart';

void main() => runApp(Miles2KM());

class Miles2KM extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Dash(),
    );
  }
}

class Dash extends StatefulWidget {
  @override
  _DashState createState() => _DashState();
}

class _DashState extends State<Dash> {
  //declarations
  var milesValue = 1.0;
  final formulaValue = 1.60934;
  var kmValue;
  final TextEditingController controller1 = TextEditingController(text: "");
  //computing
  void doConversion() {
    setState(() {
      milesValue = double.parse(controller1.text);
      kmValue = milesValue * formulaValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Convert Miles to Kilometers'),
          backgroundColor: Colors.teal,
          centerTitle: true),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: 'Input Miles value:',
                    border: OutlineInputBorder(),
                    labelStyle: TextStyle(fontSize: 15.0)),
                controller: controller1,
                style: TextStyle(fontSize: 20.0, color: Colors.black)),
            SizedBox(height: 20.0),
            RaisedButton(
              color: Colors.black54,
              child: Text('Convert'),
              textColor: Colors.white,
              onPressed: () {
                doConversion();
              },
            ),
            SizedBox(height: 20.0),
            Text(
              '$milesValue Miles is $kmValue KM',
              style: TextStyle(fontSize: 20.0, color: Colors.red),
            )
          ],
        ),
      ),
    );
  }
}
