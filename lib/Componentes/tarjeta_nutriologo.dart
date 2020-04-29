import 'package:flutter/material.dart';

class TarjetaNutriologo extends StatelessWidget {
  String foto = "assets/images/nutriologo.jpg";
  String nombre;
  String especialidad;

  @override
  Widget build(BuildContext context) {
    double altura = 100;

    final fotografia = Container(
      width: MediaQuery.of(context).size.width * 0.30,
      height: 100,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(foto)
        ),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.0), bottomLeft: Radius.circular(25.0)),
        shape: BoxShape.rectangle,
      ),
    );

    //TODO: Agregar nombre y especialidad

    return Container(
      margin: EdgeInsets.only(top: 30),
      width: MediaQuery.of(context).size.width * 0.85,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(25.0)),
        shape: BoxShape.rectangle,
        color: Colors.brown
      ),
      child: Row(
        children: <Widget> [
          fotografia
        ]
      ),
    );
  }
}
