import 'package:flutter/material.dart';
import 'boton_verde.dart';

class TarjetaComida extends StatelessWidget {
  
  final String pathImage = "assets/images/hotcake.jpg";
  final String nombredeComida = "Hot Cakes de Avena";

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
            color: Colors.grey,
          ),
          Container(
            margin: EdgeInsets.only(
              left: 5
            ),
            child: Text(
              "15 min",
              style: TextStyle(
                fontFamily: "Lato",
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Colors.grey
              ),
            ),
          )
        ],
      ),
    );
    
    
    final titulodeComida = Container(
      margin: EdgeInsets.only(
        top: 12.0,
        left: 20.0,
        bottom: 10
      ),
      child: Text(
        nombredeComida,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 20.0,
          fontWeight: FontWeight.w400,
        ),
      )
    );
    
    final tarjetaInfo = Container(
      height: 90.0,
      width: MediaQuery.of(context).size.width * 0.60,
      margin: EdgeInsets.only(
        bottom: 20
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow> [
            BoxShadow(
                color: Colors.black12,
                blurRadius: 15.0,
                offset: Offset(0.0,5.0)
            )
          ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          titulodeComida,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget> [
              tiempoReceta,
              BotonVerde("Detalles")  
            ]
          ),
        ],
      ),
    );
    
    final cuadroComida = Container(
                width: MediaQuery.of(context).size.width * 0.85,
                height: 200,
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
    Container(
          margin: EdgeInsets.only(
            bottom: 15
          ),
          height: 260,
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
    );
  }
}
