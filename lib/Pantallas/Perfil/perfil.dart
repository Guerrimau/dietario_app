import 'package:flutter/material.dart';
import '../../Componentes/fondo_verde.dart';

class Perfil extends StatelessWidget {
  
  String nombreUsuario = "Jose Manuel";

  @override
  Widget build(BuildContext context) {
	 
   
   return (
     Stack(
       children: <Widget> [
         FondoVerde("Perfil", 450, -1.0, 30)
       ]
     )
   );
  }
}