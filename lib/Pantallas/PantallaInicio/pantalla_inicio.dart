import 'package:flutter/material.dart';
import '../../Componentes/fondo_verde.dart';
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
     Stack(
       children: <Widget> [
         FondoVerde(titulo , 250, 1.0, 35),
         ListView(
           children: <Widget> [
             cajaInvisible,
             TarjetaComida(),
             TarjetaComida(),
             TarjetaComida(),
             TarjetaComida()
           ]
         ),
       ]
     )
   );
  }
}