import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultPuntos;
  final Function resetHandler;

  Result(this.resultPuntos, this.resetHandler);
  String get resultText {
    var result = '';
    if (resultPuntos <= 24) {
      result = 'Sos un poco... raro';
    } else if (resultPuntos <= 27) {
      result = 'Tu gusto es normal';
    } else if (resultPuntos <= 30) {
      result = 'Que buen gusto rey';
    }

    return (result + ' $resultPuntos pts');
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultText,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          FlatButton(
            child: Text('Restart Form'),
            textColor: Colors.blue,
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}
