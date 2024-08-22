import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          centerTitle: true,
          title: const Text(
            "Şanlı Türk Bayrağı",
          ),
        ),
        body: Bayrak(400),
      ),
    );
  }
}

class Bayrak extends StatelessWidget {
  Bayrak(this.generalSize, {Key? key}) : super(key: key);
  double generalSize; // burası yukarıdan gelen bayrak boyutu
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Stack(children: [
          Container(
            width: 1.5 * generalSize,
            height: generalSize,
            color: Colors.red,
          ),
          Positioned(
            left: 0.25 * generalSize,
            top: 0.25 * generalSize,
            child: Container(
              width: 0.5 * generalSize,
              height: 0.5 * generalSize,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.white),
            ),
          ),
          Positioned(
            top: 0.3 * generalSize,
            left: 0.3625 * generalSize,
            child: Container(
              width: 0.4 * generalSize,
              height: 0.4 * generalSize,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.red),
            ),
          ),
          Positioned(
            left: 0.7 * generalSize,
            top: 0.375 * generalSize,
            child: Icon(
              Icons.star,
              color: Colors.white,
              size: 0.25 * generalSize,
            ),
          )
        ]),
      ),
    );
  }
}
