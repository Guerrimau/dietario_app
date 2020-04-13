import 'package:flutter/material.dart';
import '../../Componentes/widgets_pantalla.dart';
import '../../Componentes/tarjeta_comida.dart';
import 'package:intl/intl.dart';
import 'package:flutter/rendering.dart';

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
                    child: Bienvenida(),
                    bottom: 50,
                    left: 25
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

class Bienvenida extends StatelessWidget {
  
    final today = DateTime.now();
  
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "${DateFormat("EEEE").format(today)}, ${DateFormat("d MMMM").format(today)}",
          style: TextStyle(
            color: Colors.white, fontSize: 20, fontFamily: "LATO"
          )
        ),
        Text(
          "Hola, Alberto Gutierrez",
          style: TextStyle(
            color: Colors.white, fontSize: 28, fontFamily: "LATO"
            ),
        )
      ]
    );
  }
}

