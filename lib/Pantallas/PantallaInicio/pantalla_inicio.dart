import 'package:dietario_app/Componentes/tarjeta_comida.dart';
import 'package:flutter/material.dart';
import '../../Componentes/widgets_pantalla.dart';

class PantallaInicio extends StatelessWidget {
  
  //Alto de la cabecera con degradado
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
                  child: Titulo("Hola, Gerardo"),
                  bottom: 30,
                ),
                Positioned(
                  child: CurvaBlanca(),
                  bottom: 0,
                )
              ]),
              //Aqui se ingresa el contenido de la pagina
              SubTitulo("Tu comida de hoy"),
              TarjetaComida(),
              SubTitulo("Nutrinfo"),
             ],
            ),
        ),
      ),
    ));
  }
}

