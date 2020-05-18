import 'package:dietario_app/Componentes/tarjeta_cena.dart';
import 'package:dietario_app/Componentes/tarjeta_desayuno.dart';
import 'package:flutter/material.dart';
import '../../Componentes/widgets_pantalla.dart';
import '../../Componentes/tarjeta_comida.dart';


class Dietario extends StatelessWidget {
  
  final double alto = 200;
  final String dia = "Miercoles";
  
  @override
  
  Widget build(BuildContext context) {
	 
   final seleccionDia = Container(
    margin: EdgeInsets.only(
      right: 30,
      bottom: 10
    ),
    child: Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            left: 40,
            right: 5,
          ),
          child: Icon(
            Icons.arrow_back_ios,
            color: Color(0xFFFAFAFA),
          ),
        ),
        Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(
                right: 8
              ),
              child: Icon(
                Icons.calendar_today,
                color: Color(0xFFFAFAFA),
              ),
            ),
            Text(
              dia,
              style: TextStyle(
                fontFamily: 'Lato',
                fontSize: 20,
                color: Color(0xFFFAFAFA)
              )
            )
          ],
        ),
        Container(
          margin: EdgeInsets.only(
            left: 5,
          ),
          child: Icon(
            Icons.arrow_forward_ios,
            color: Color(0xFFFAFAFA),
          ),
        )
      ]
    ),
  );

  final opciones = Container(
    margin: EdgeInsets.only(
      right: 30
    ),
    alignment: Alignment.centerRight,
    child: Icon(
      Icons.menu,
      color: Colors.black87,
      size: 30,
    ),
  );
   
   return (Scaffold(
      body: SingleChildScrollView(
        child: Container(
            child: Column(
             children: <Widget>[
              Stack(children: <Widget>[
                //Aqui se ingresa el contenido de las cabeceras 
                DegradadoVerde(alto),
                Positioned(
                  child: Row(
                    children: <Widget>[
                      Titulo("Mi Dietario"),
                      seleccionDia
                    ],
                  ),
                  bottom: 30,
                ),
                Positioned(
                  child: CurvaBlanca(),
                  bottom: 0,
                )
              ]),
              //Aqui se ingresa el contenido de la pagina
              opciones,
              SubTitulo("Desayuno"),
              TarjetaDesayuno(),
              SubTitulo("Comida"),
              TarjetaComida(),
              SubTitulo("Cena"),
              TarjetaCena()
             ],
            ),
        ),
      ),
    )
   );
  }
}