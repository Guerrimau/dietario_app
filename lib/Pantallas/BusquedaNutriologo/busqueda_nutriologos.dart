import 'package:dietario_app/Componentes/categoria_nutriologo.dart';
import 'package:dietario_app/Componentes/tarjeta_nutriologo1.dart';
import 'package:dietario_app/Componentes/tarjeta_nutriologo2.dart';
import 'package:dietario_app/Componentes/tarjeta_nutriologo3.dart';
import 'package:dietario_app/Componentes/tarjeta_nutriologo4.dart';
import 'package:dietario_app/Componentes/tarjeta_nutriologo5.dart';
import 'package:dietario_app/Pantallas/DetallesComida/detalles_cena.dart';
import 'package:flutter/material.dart';

class BusquedaNutriologos extends StatelessWidget {
  
  final String pathImage = "assets/images/nutriologo.jpg";
  final String nombre = "Lic. Kevin Loaiza";
  final String especialidad = "Nutriologo Clinico";
  
  // ! Eliminar la barra de status de esta pantalla

  @override
  Widget build(BuildContext context) {
    final topApp = SafeArea(
        child: Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 30, left: 30),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black87,
              size: 30,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30, left: 20),
          child: Text("Encuentra tu \nNutriologo",
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.black87,
                  fontFamily: 'Lato',
                  fontSize: 26,
                  fontWeight: FontWeight.w600)),
        )
      ],
    ));

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          topApp,
          SubTitulos("Categorias"),
          // ! TODO: Cambiar esto por un ListView Horizontal
          Container(
            margin: EdgeInsets.only(left: 30, top: 15),
            child: Row(children: <Widget>[
              CategoriaNutriologo("Obesidad &\nSobrepeso", 12),
              CategoriaNutriologo("General", 7),
            ]),
          ),
          SubTitulos("Nutriologos"),
          TarjetaNutriologo1(),
          TarjetaNutriologo2(),
          TarjetaNutriologo3(),
          TarjetaNutriologo4(),
          TarjetaNutriologo5(),

        ]),
      ),
    );
  }
}

class SubTitulos extends StatelessWidget {
  String texto;

  SubTitulos(this.texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.only(left: 30, top: 35),
      child: Text(
        texto,
        style: TextStyle(
            color: Colors.black87,
            fontFamily: 'Lato',
            fontSize: 26,
            fontWeight: FontWeight.w500),
      ),
    );
  }
}
