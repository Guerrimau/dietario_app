import "package:flutter/material.dart";
import '../../Componentes/widgets_pantalla.dart';

class DetallesComida extends StatelessWidget {
  
  final pathImage = "assets/images/hotcake.jpg";
  final nombre = "Hot Cakes de Avena";
  final double gramos = 220;
  final double calorias = 760;
  

  @override
  Widget build(BuildContext context) {
    

    final topApp = SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
              left: 20,
              top: 15
            ),
            child: InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                color: Color(0xFFFAFAFA),
                size: 30,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              right: 20,
              top: 15
            ),
            child: InkWell(
              child: Icon(
                Icons.favorite_border,
                color: Color(0xFFFAFAFA),
                size: 30,
              ),
            ),
          )
        ],
      )
    );
    
    final nombreDetalles = Container(
      margin: EdgeInsets.only(
        left: 20,
        bottom: 20
      ),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            nombre,
            style: TextStyle(
                fontFamily: 'Lato',
                fontSize: 30,
                color: Color(0xFFFAFAFA),
                fontWeight: FontWeight.w400
            ),
          ),
          Text(
              "${gramos.toStringAsFixed(0)} gramos · ${calorias.toStringAsFixed(0)} calorias",
              style: TextStyle(
                fontFamily: 'Lato',
                fontSize: 20,
                color: Color(0xFFFAFAFA),
                fontWeight: FontWeight.w400
              ),
          ),
        ],
      )
    );
    
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            child: Column(
             children: <Widget>[
              Stack(children: <Widget>[
                //Aqui se ingresa el contenido de las cabeceras 
                ImagenComida(pathImage),
                Positioned(
                  child: topApp,
                ),
                Positioned(
                  child: nombreDetalles,
                  bottom: 30,
                ),
                Positioned(
                  child: CurvaBlanca(),
                  bottom: 0,
                )
              ]),
              //Aqui se ingresa el contenido de la pagina
              Macronutrientes(),
              Ingredientes(),
             ],
            ),
        ),
      )
    );
  }
}

class ImagenComida extends StatelessWidget {
  
  final String pathImage;

  ImagenComida (this.pathImage);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.35,
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(pathImage),
            colorFilter: 
              ColorFilter.mode(Colors.black.withOpacity(0.75), 
              BlendMode.dstATop),
        ),
      color: Colors.black,
      shape: BoxShape.rectangle,
      ),
    );
  }
}

class Macronutrientes extends StatelessWidget {
  
  final double proteinas = 26;
  final double carbohidratos = 180;
  final double grasas = 14;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 7
      ),
      height: 80.0,
      width: MediaQuery.of(context).size.width * 0.85,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        gradient: LinearGradient(
          colors: [
            Color(0xFF76E917),
            Color(0xFF40C26D),
          ],
          begin: FractionalOffset(-1.0, 1.0),
          end: FractionalOffset(1.0, -1.0),
          stops: [0.3, 1.0],
          tileMode: TileMode.clamp,
        )
      ),
      child: Container(
        margin: EdgeInsets.only(
          top: 15
        ),
        child: Row(
          mainAxisAlignment: 
            MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(
                left: 20
              ),
              child: Column(
                children: <Widget>[
                  Text(
                    "${proteinas.toStringAsFixed(0)} gr",
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: Color(0xFFFAFAFA)
                    ),
                  ),
                  Text(
                    "Proteinas",
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Color(0xFFFAFAFA)
                    )
                  )
                ]
              ),
            ),
            VerticalDivider(
              color: Colors.white,
              indent: 3,
              endIndent: 18,
              thickness: 1,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Text(
                    "${carbohidratos.toStringAsFixed(0)} gr",
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: Color(0xFFFAFAFA)
                    ),
                  ),
                  Text(
                    "Carbohidratos",
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Color(0xFFFAFAFA)
                    )
                  )
                ]
              ),
            ),
            VerticalDivider(
              color: Colors.white,
              indent: 3,
              endIndent: 18,
              thickness: 1,
            ),
            Container(
              margin: EdgeInsets.only(
                right: 20
              ),
              child: Column(
                children: <Widget>[
                  Text(
                    "${grasas.toStringAsFixed(0)} gr",
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: Color(0xFFFAFAFA)
                    ),
                  ),
                  Text(
                    "Grasas",
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Color(0xFFFAFAFA)
                    )
                  )
                ]
              ),
            ),
          ]
        ),
      ),
    );
  }
}

class Ingredientes extends StatelessWidget {
 
  final String ingredienteUno = "· 150gr de Avena";
  final String ingredienteDos = "· 80ml de Leche";
  final String ingredienteTres = "· 2pz de Huevo";
 
  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: Container(
        margin: EdgeInsets.only(
          top: 50,
          left:20,
          right: 20,
          bottom: 30
        ),
        
        width: MediaQuery.of(context).size.width * 0.85,
        
        /*Falta implementar que la altura del contenedor funcione 
        Respecto a los items adentro*/
        height: 180,

        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(
                top: 20,
                left: 20, 
                bottom: 5
              ),
              child: Text(
                "Ingredientes",
                style: TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87
                ),
              ) ,
            ),
            Container(
              margin: EdgeInsets.only(
                bottom: 10
              ),
              child: Divider(
                color: Colors.grey,
                indent: 20,
                endIndent: 20,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 30,
                bottom: 10
              ),
              child: Text(
                ingredienteUno,
                style: TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 16,
                  color: Colors.grey
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 30,
                bottom: 10
              ),
              child: Text(
                ingredienteDos,
                style: TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 16,
                  color: Colors.grey
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 30,
                bottom: 10
              ),
              child: Text(
                ingredienteTres,
                style: TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 16,
                  color: Colors.grey
                ),
              ),
            ),
          ]
        ),
      ),
    );
  }
}