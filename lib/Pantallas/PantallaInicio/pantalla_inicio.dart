import 'package:flutter/material.dart';
import '../../Componentes/fondo_verde.dart';
import '../../Componentes/tarjeta_comida.dart';
import '../../Componentes/tarjeta_comida.dart';
import '../../Componentes/tarjeta_comida.dart';

class PantallaInicio extends StatelessWidget {
  
  final String titulo = "Bienvenido!" ;

  @override
  Widget build(BuildContext context) {
	 
   final cajaInvisible = Container(
     height: 250,
     color: Colors.transparent,
   );
   
   
   return (
     ListView(
       children: <Widget> [
         Stack(
           children: <Widget> [
             cajaInvisible,
             FondoVerde(titulo , 250, 1.0, 35),
           ]
         ),
         TarjetaComida(),
         TarjetaComida()
       ]
     )
   );
  }
}