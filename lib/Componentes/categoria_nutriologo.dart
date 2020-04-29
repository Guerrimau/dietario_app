import 'package:flutter/material.dart';

class CategoriaNutriologo extends StatelessWidget {
  
  int cantidad;
  String nombreCategoria;
  
  CategoriaNutriologo(this.nombreCategoria, this.cantidad);

  @override
  Widget build(BuildContext context) {
    
    final titulo = Text(
      nombreCategoria,
      textAlign: TextAlign.left,
      style: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontFamily: 'Lato'
      )
    );
    final subtitulo = Padding(
      padding: EdgeInsets.only(top:2),
      child:Text(
      "${cantidad.toStringAsFixed(0)} nutriologos",
      textAlign: TextAlign.left,
      style: TextStyle(
        color: Colors.white,
        fontSize: 15,
        fontFamily: 'Lato'
      )
    ));

    return Container(
      margin: EdgeInsets.only(right: 20),
      width: 140,
      height: 210,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(25)),
          color: Colors.green),
      child: Padding(
        padding: EdgeInsets.only(
          top: 10,
          left: 15
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            titulo,
            subtitulo
          ]
        ),
      ),
    );
  }
}