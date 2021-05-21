import 'package:camcode/cam_code_scanner.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      routes: {
        '/': (context) => MyApp(),
      },
      initialRoute: '/',
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    String tapToStarTitle = 'Waiting start scanner';
    String title = 'Web Scanner';
    return MaterialApp(
      debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('$title'),
        ),
        body: Container(
          child: Column(
            children: [
              Expanded(
                child: Container(
                  color: Colors.black,
                  child: CamCodeScanner(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    refreshDelayMillis: 800,
                    onBarcodeResult: (barcode) {},
                  ),
                ),
              ),
              Container(
                height: 50,
                child: Center(
                  child: Text(tapToStarTitle),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
