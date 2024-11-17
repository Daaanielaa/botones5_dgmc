import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App de Botones',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BotonApp(),
    );
  }
}

class BotonApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Botones Daniela Morocho'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, 
                ),
                onPressed: () {
                  print('Botón Primary presionado');
                },
                child: Text('botón 1'),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey, 
                ),
                onPressed: () {
                  print('Botón Secondary presionado');
                },
                child: Text('Botón 2'),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, 
                ),
                onPressed: () {
                  print('Botón Success presionado');
                },
                child: Text('Botón 3'),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red, 
                ),
                onPressed: () {
                  print('Botón Danger presionado');
                },
                child: Text('Botón 4'),
              ),
            ],
          ),
          SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange, 
            ),
            onPressed: () {
              print('Botón Warning presionado');
            },
            child: Text('Botón 5'),
          ),
        ],
      ),
    );
  }
}
