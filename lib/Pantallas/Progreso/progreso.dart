import 'package:flutter/material.dart';
import '../../Componentes/widgets_pantalla.dart';


class Progreso extends StatelessWidget {
  
  final double alto = 200;
  
  @override
  Widget build(BuildContext context) {
	 return (Scaffold(
      body: SingleChildScrollView(
        child: Container(
            child: Column(
             children: <Widget>[
              Stack(children: <Widget>[
                //Aqui se ingresa el contenido de las cabeceras 
                DegradadoVerde(alto),
                Positioned(
                  child: Titulo("Mi Progreso"),
                  bottom: 30,
                ),
                Positioned(
                  child: CurvaBlanca(),
                  bottom: 0,
                )
              ]),
              //Aqui se ingresa el contenido de la pagina



             ],
            ),
        ),
      ),
    )
   );
  }
}