import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class ScannerPage extends StatefulWidget {
  const ScannerPage({Key key}) : super(key: key);

  @override
  _ScannerPageState createState() => _ScannerPageState();
}

class _ScannerPageState extends State<ScannerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              child: Text('QR'),
              onPressed: () async {
                String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
                  '#ffffff',
                  'Cancelar',
                  false,
                  ScanMode.QR,
                );
                print('$barcodeScanRes');
              },
            ),
            // Expanded(
            //   flex: 1,
            //   child: Center(
            //     child: Text('Scan result: $qrText'),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
