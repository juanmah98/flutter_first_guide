import 'package:flutter/material.dart';

import './preguntas.dart';
import 'respuesta.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> preguntas;
  final int preguntaIndex;
  final Function respuestasPreguntas;

  Quiz(
      {@required this.preguntas,
      @required this.respuestasPreguntas,
      @required this.preguntaIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Pregunta(preguntas[preguntaIndex]['textoPreguntas']),
        ...(preguntas[preguntaIndex]['respuestas'] as List<Map<String, Object>>)
            .map((respuesta) {
          return Respuesta(() => respuestasPreguntas(respuesta['puntos']),
              respuesta['text']);
        }).toList(),
      ],
    );
  }
}
