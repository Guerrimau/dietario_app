import 'package:dietario_app/Pantallas/Perfil/perfil.dart';
import 'package:flutter/material.dart';
import '../../Componentes/widgets_pantalla.dart';


class Configuracion extends StatelessWidget {
 
  
  @override
  Widget build(BuildContext context) {
   
    

    return (Scaffold(
      body: SingleChildScrollView(
        child: Container(
            child: Column(
             children: <Widget>[
              Stack(children: <Widget>[
                //Aqui se ingresa el contenido de las cabeceras 
                DegradadoVerde(MediaQuery.of(context).size.height * 0.15),
                Positioned(
                  top:40, left: 150,right:15,
                  child: Row(
                    children: <Widget>[
                      Titulo("Configuracion"),
                    ]
                    
                  ),
                 //Acomodarlo bien con las propiedades top y left  
                ),
                Positioned(
                  right: 350,left:0,
                  top:40,
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
                
                
                Positioned(
                  child: CurvaBlanca(),
                  bottom: 0,
                )
              ]),
              //Aqui se ingresa el contenido de la pagina
              SubTitulo("Aqui configura"),
              
             /* Column(
                children: <Widget>[
                  Container(
                      height: 450,
                      width: 450,
                      padding: EdgeInsets.only(bottom: 10),         
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                              
                          ],
                      ),
                  )
                ],
              ),*/
            ]
        ),
      ),
    )));
  }
}
