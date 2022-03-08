import 'package:flutter/material.dart';

import './preguntas.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _preguntaIndex = 0;

  void _respuestasPreguntas() {
    setState(() {
      _preguntaIndex = _preguntaIndex + 1;
    });
    print(_preguntaIndex);
  }

  @override
  Widget build(BuildContext context) {
    var preguntas = [
      'Cual es tu color favorito?',
      'Cual es tu animal favorito'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Pregunta(preguntas[_preguntaIndex]),
            ElevatedButton(
              child: Text('Respuesta 1'),
              onPressed: _respuestasPreguntas,
            ),
            ElevatedButton(
              child: Text('Respuesta 2'),
              onPressed: _respuestasPreguntas,
            ),
            ElevatedButton(
              child: Text('Respuesta 3'),
              onPressed: () {
                print('Elije una respuesta3');
              },
            ),
          ],
        ),
      ),
    );
  }
}
