

import 'package:flutter/material.dart';
import '../../Componentes/fondo_verde.dart';

class Perfil extends StatelessWidget {
  
  String nombreUsuario = "Jose Manuel  ";
 


  @override
  Widget build(BuildContext context) {
	 
   


   final nombre = Text(
     nombreUsuario,
     style: TextStyle(
       color: Colors.white, 
       fontSize: 18,
       fontFamily: "Lato",
     ),
    );


   
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     home: Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            
            height: 300,
            padding: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/fondo.jpg'),
                fit: BoxFit.cover
                )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  UserPhoto(assetImage: 'assets/images/perfil.jpg', size:150,),
                        nombre,
                ],
                ),
          )
          
      ],
      )
     )
   );
  }
}

class UserPhoto extends StatelessWidget {
  final String assetImage;
  final double size;

  const UserPhoto({
    Key key,
    @required this.assetImage,
    this.size=150,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/perfil.jpg'),
          fit: BoxFit.cover,
          ),
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white,
          )
          ),
          margin: EdgeInsets.only(bottom:5),
          );
  }
}