import 'package:dietario_app/Componentes/categoria_nutriologo.dart';
import 'package:dietario_app/Componentes/tarjeta_nutriologo.dart';
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
          TarjetaNutriologo(),
          TarjetaNutriologo(),
          TarjetaNutriologo(),
          TarjetaNutriologo(),
          TarjetaNutriologo(),

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
