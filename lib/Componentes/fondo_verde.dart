import 'package:flutter/material.dart';

class FondoVerde extends StatelessWidget {
  String title;
  double alto;
  //Solo puede ser 1 (Abajo) o -1(Arriba)
  double posicion;
  //Tamaño de Letra
  double size;

  FondoVerde(this.title, this.alto, this.posicion, this.size);

  @override
  Widget build(BuildContext context) {
    final fondoBlanco = Container(
        margin: EdgeInsets.only(
          top: alto - 20,
        ),
        height: 100,
        decoration: BoxDecoration(
          color: Color(0xFFFAFAFA),
          borderRadius: BorderRadius.circular(20.0),
        ));

    final tituloFondo = Container(
      height: alto,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color(0xFF66E002),
                Color(0xFF40C26D),
              ],
              begin: FractionalOffset(0.0, 0.0),
              end: FractionalOffset(1.0, 1.0),
              stops: [0.0, 1],
              tileMode: TileMode.repeated)),
      child: Padding(
        padding: const EdgeInsets.only(left: 30.0, bottom: 35.0, top: 45),
        child: Text(
          title,
          style: TextStyle(
              color: Color(0xFFFAFAFA),
              fontSize: size,
              fontFamily: "Lato",
              fontWeight: FontWeight.bold),
        ),
      ),
      alignment: Alignment(-1.0, posicion),
    );

    return (
      Container(
        child: Stack(
          children: <Widget>[
            tituloFondo,
            fondoBlanco
          ]
        ),
    ));
  }
}
