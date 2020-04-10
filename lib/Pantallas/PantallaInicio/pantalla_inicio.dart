import 'package:flutter/material.dart';
import '../../Componentes/tarjeta_comida.dart';

class PantallaInicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
	 return (
     Column(
       children: <Widget> [
         TarjetaComida()
       ]
     )
   );
  }
}