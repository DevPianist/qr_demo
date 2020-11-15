import 'package:flutter/material.dart';

import 'scanner_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QR Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ScannerPage(),
    );
  }
}
