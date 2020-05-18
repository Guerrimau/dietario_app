import 'package:dietario_app/Pantallas/BusquedaNutriologo/busqueda_nutriologos.dart';
import 'package:flutter/material.dart';
import 'boton_verde.dart';
import '../Pantallas/DetallesComida/detalles_comida.dart';

class Irnutriologos extends StatelessWidget {
  
  final String pathImage = "assets/images/teamnutri.jpg";
  final String nombre = "Nuetro Equipo";

  @override
  Widget build(BuildContext context) {
    
    final tiempoReceta = Container(
      margin: EdgeInsets.only(
          top: 0.0,
          left: 20
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.access_time,
            color: Colors.grey.withOpacity(0.6)
          ),
          Container(
            margin: EdgeInsets.only(
              left: 5
            ),
            child: Text(
              "24 Hr",
              style: TextStyle(
                fontFamily: "Lato",
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Colors.grey.withOpacity(0.6)
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 10
            ),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.favorite,
                  color: Colors.grey.withOpacity(0.6),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 5
                  ),
                  child: Text(
                    "100",
                    style: TextStyle(
                      fontFamily: "Lato",
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey.withOpacity(0.6)
                    ),
                  ),
                ),
              ]),
          ),
        ],
      ),
    );
    
    
    final titulonutri = Container(
      margin: EdgeInsets.only(
        top: 12.0,
        left: 20.0,
        bottom: 10
      ),
      child: Text(
        nombre,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 20.0,
          fontWeight: FontWeight.w400,
        ),
      )
    );
    
    final tarjetaInfo = Container(
      height: 90.0,
      width: MediaQuery.of(context).size.width * 0.70,
      margin: EdgeInsets.only(
        bottom: 0
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow> [
            BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                blurRadius: 20.0,
                offset: Offset(0.0,10.0)
            )
          ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          titulonutri,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget> [
              tiempoReceta,
              BotonVerde("Conocer")  
            ]
          ),
        ],
      ),
    );
    
    final cuadroComida = Container(
                width: MediaQuery.of(context).size.width * 0.85,
                height: 250,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(pathImage)
                  ),
                  color: Colors.green,
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  shape: BoxShape.rectangle,
                ),
    );
    
    return 
    InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BusquedaNutriologos()),
            );
          },
          child: Container(
            margin: EdgeInsets.only(
              bottom: 25
            ),
            height: 290,
            width: MediaQuery.of(context).size.width * 0.85,
            child: (
              Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topCenter,
                    child: cuadroComida
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: tarjetaInfo
                  )
                ]
              )
            ),
      ),
    );
  }
}
