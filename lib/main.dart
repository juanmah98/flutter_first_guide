import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/result.dart';

// import './preguntas.dart';
// import './respuesta.dart';
import './quiz.dart';
import './result.dart';

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
  final _preguntas = const [
    {
      'textoPreguntas': 'Cual es tu color favorito?',
      'respuestas': [
        {'text': 'Rojo', 'puntos': '8'},
        {'text': 'Amarillo', 'puntos': '4'},
        {'text': 'Azul', 'puntos': '9'},
        {'text': 'Negro', 'puntos': '10'}
      ]
    },
    {
      'textoPreguntas': 'Cual es tu marca favorita',
      'respuestas': [
        {'text': 'VW', 'puntos': '9'},
        {'text': 'BMW', 'puntos': '9'},
        {'text': 'Citroen', 'puntos': '6'},
        {'text': 'Audi', 'puntos': '10'}
      ]
    },
    {
      'textoPreguntas': 'Cual es tu genero musical preferido',
      'respuestas': [
        {'text': 'Reggueton', 'puntos': '10'},
        {'text': 'Cuarteto', 'puntos': '9'},
        {'text': 'Elctronica', 'puntos': '8'},
        {'text': 'Rock', 'puntos': '7'}
      ]
    },
  ];
  var _preguntaIndex = 0;
  var _totalPuntos = 0;

  void _restartQuiz() {
    setState(() {
      _preguntaIndex = 0;
      _totalPuntos = 0;
    });
  }

  void _respuestasPreguntas(String punto) {
    // var aBool = true;

    _totalPuntos = _totalPuntos + int.parse(punto);

    setState(() {
      _preguntaIndex = _preguntaIndex + 1;
    });
    print(_preguntaIndex);

    if (_preguntaIndex < _preguntas.length) {}
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'My First App',
            style: TextStyle(fontSize: 22),
          ),
        ),
        body: _preguntaIndex < _preguntas.length
            ? Quiz(
                respuestasPreguntas: _respuestasPreguntas,
                preguntaIndex: _preguntaIndex,
                preguntas: _preguntas,
              )
            : Result(_totalPuntos, _restartQuiz),
      ),
    );
  }
}
