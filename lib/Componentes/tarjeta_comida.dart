import 'package:flutter/material.dart';
import 'boton_verde.dart';

class TarjetaComida extends StatelessWidget {
  
  final String pathImage = "assets/images/hotcake.jpg";
  final String nombredeComida = "Hot Cakes de Avena";

  @override
  Widget build(BuildContext context) {
    
    final titulodeComida = Container(
      margin: EdgeInsets.only(
        top: 15.0,
        left: 20.0
      ),
      child: Text(
        nombredeComida,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 22.0,
          fontWeight: FontWeight.w900,
        ),
      )
    );

    final imagenComida = Container(
      height: 250.0,
      width:  MediaQuery.of(context).size.width * 0.90,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(pathImage)
          ),
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          shape: BoxShape.rectangle,
      ),
    );

    final tarjetaInfo = Container(
      height: 100.0,
      width: 300,
      margin: EdgeInsets.only(
          top: 250.0,
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow> [
            BoxShadow(
                color: Colors.black38,
                blurRadius: 5.0,
                offset: Offset(0.0,5.0)
            )
          ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          titulodeComida,
          Row(
            children: <Widget> [
              BotonVerde("Detalles")
            ]
          ),
        ],
      ),
    );

    return(
      Align(
        alignment: Alignment.bottomCenter,
        child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  imagenComida,
                  tarjetaInfo,
                ],
               ),  
      )
    );
  }
}
