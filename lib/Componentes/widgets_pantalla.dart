import 'package:flutter/material.dart';

class DegradadoVerde extends StatelessWidget {
  
  final double alto;

  DegradadoVerde(this.alto);
  
  @override
  Widget build(BuildContext context) {
    
    final degradado = Container(
        height: alto,
        width: MediaQuery.of(context).size.width,
      	decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF76E917),
              Color(0xFF40C26D),
            ],
            begin: FractionalOffset(-1.0, 1.0),
            end: FractionalOffset(1.0, -1.0),
            stops: [0.4, 1.0],
            tileMode: TileMode.clamp,
          )
			  ),
    );
    
    return (
      degradado 
    );
  }
}

class CurvaBlanca extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),  
          ),
          color: Color(0xFFFAFAFA),
        )
    );
  }
}

class Titulo extends StatelessWidget {
  
  final String nombreTitulo;

  Titulo(this.nombreTitulo);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 20,
        bottom: 20
      ),
      child: Text(
        nombreTitulo,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 35.0,
          fontWeight: FontWeight.w900,
          color: Color(0xFFFAFAFA)
        ),
      )
    );
  }
}

class SubTitulo extends StatelessWidget {
  
  final String subTitulo;

  SubTitulo(this.subTitulo);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.only(
        top: 10,
        left: 30,
        bottom: 15
      ),
      child: Text(
        subTitulo,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 25.0,
          fontWeight: FontWeight.w600,
          color: Colors.black87
        ),
      )
    );
  }
}