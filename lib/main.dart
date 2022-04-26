import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String message = "teks ini";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text("Anonymous Method")),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(message),
        RaisedButton(
          child: Text("Tekan"),
          onPressed: () {
            setState(() {
              message = "Tombol sudah ditekan";
            });
          },
        ),
      ])),
    ));
  }
}
