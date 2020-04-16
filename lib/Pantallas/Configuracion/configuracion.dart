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
                  left: 20, bottom: 30,
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(
                          bottom: 20
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
                      Titulo("Configuracion"),
                    ]
                  ),
                 //Acomodarlo bien con las propiedades top y left  
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
