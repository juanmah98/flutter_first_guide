import 'package:flutter/material.dart';

class Respuesta extends StatelessWidget {
  final Function selectHandler;
  final String textoRespuesta;

  Respuesta(this.selectHandler, this.textoRespuesta);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(textoRespuesta),
        onPressed: selectHandler,
      ),
    );
  }
}
