import 'package:flutter/material.dart';
import '../../Componentes/fondo_verde.dart';

class Progreso extends StatelessWidget {
  
  final String titulo = "Mi Progreso";
  
  @override
  Widget build(BuildContext context) {
	 return (
     Stack(
       children: <Widget> [
         FondoVerde(titulo, 250, 1.0, 30)
       ]
     )
   );
  }
}