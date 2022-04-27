import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> widgets = [];
  int counter = 1;

  // This is Constructors
  // Konstruktor adalah fungsi khusus dari kelas yg bertanggungjawab
  // utk menginisialisasi variabel class. Dart mendefinisikan konstruktor dg nama
  // yg sama dengan nama class. Konstruktor: fungsi dan karenanya dpt diparameterisasi.

  // _MyAppState() {
  //   for (int i = 0; i < 20; i++)
  //     widgets.add(Text("lorem ipsum ke " + i.toString(),
  //         style: TextStyle(fontSize: 35)));
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("ListView"),
        ),
        body: ListView(
          children: <Widget>[
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              RaisedButton(
                onPressed: () {
                  setState(() {
                    widgets.add(Text(
                      "lorem ipsum ke " + counter.toString(),
                      style: TextStyle(fontSize: 35),
                    ));
                    counter++;
                  });
                },
                child: Text("Tambah Data"),
              ),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    widgets.removeLast();
                    counter--;
                  });
                },
                child: Text("Hapus Data"),
              ),
            ]),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: widgets,
            )
          ],
        ),
      ),
    );
  }
}

// IMPLEMENTASI TEXTSTYLE
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("TextStyle"),
//         ),
//         body: Center(
//           child: Text(
//             "lorem ipsum",
//             style: TextStyle(
//               fontFamily: "Caveat",
//               fontSize: 30,
//               decoration: TextDecoration.underline,
//               decorationColor: Colors.blue,
//               decorationThickness: 5,
//               decorationStyle: TextDecorationStyle.wavy,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// IMPLEMENTASI ANONYMOUS METHOD
// class MyApp extends StatefulWidget {
//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   String message = "teks ini";

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Scaffold(
//       appBar: AppBar(title: Text("Anonymous Method")),
//       body: Center(
//           child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
//         Text(message),
//         RaisedButton(
//           child: Text("Tekan"),
//           onPressed: () {
//             setState(() {
//               message = "Tombol sudah ditekan";
//             });
//           },
//         ),
//       ])),
//     ));
//   }
// }
