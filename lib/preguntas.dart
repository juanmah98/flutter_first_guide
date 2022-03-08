import 'package:flutter/material.dart';

class Pregunta extends StatelessWidget {
  final String preguntasText;

  Pregunta(this.preguntasText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        preguntasText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
