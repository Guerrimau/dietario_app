import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:vector_math/vector_math_64.dart' as math;
import '../../Componentes/widgets_pantalla.dart';
import 'package:dietario_app/Pantallas/Configuracion/configuracion.dart';


class Perfil extends StatelessWidget {
  String nombreUsuario ="Alberto Gutierrez";
  final double altura = 170;
  final double peso = 70;
  final double imc = 25;
  
  @override
  Widget build(BuildContext context) {
    final nombre = Text(
    nombreUsuario,
    style: TextStyle(
      color: Color(0xFFFAFAFA),
      fontSize: 25),
    );

    final configIcon = Container(
                        margin: EdgeInsets.only(
                          bottom: 20,
                          right: 20
                        ),
                        child: InkWell(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Configuracion()),
                            );
                          },
                          child: Icon(
                            Icons.settings,
                            color: Color(0xFFFAFAFA),
                            size: 30,
                          ),
                        ),
                      );
    
    final topApp = SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
              top:8,
            ),
            child: Titulo("Perfil")
          ),
          Container(
            margin: EdgeInsets.only(
              top:8,
            ),
            child: configIcon,
          ),
        ]
      )
    );

    return (Scaffold(
      body: SingleChildScrollView(
        child: Container(
            child: Column(
             children: <Widget>[
              Stack(children: <Widget>[
                DegradadoVerde(MediaQuery.of(context).size.height * 0.42),
                //Aqui se ingresa el contenido de las cabeceras 
                topApp,
                Positioned(
                  top:60,
                  right: 40,
                  left: 40,
                  child: Column(
                    children: <Widget>[
                        _Dp(
                          width: MediaQuery.of(context).size.height * 0.1,
                          height: MediaQuery.of(context).size.height * 0.1,
                        ),
                        nombre,
                        Text(
                        "${altura.toStringAsFixed(0)} cm · ${peso.toStringAsFixed(0)} kg · ${imc.toStringAsFixed(0)} imc",
                            style: TextStyle(
                              fontFamily: 'Lato',
                              fontSize: 20,
                              color: Color(0xFFFAFAFA),
                              fontWeight: FontWeight.w400
                            ),
                        ),
                        //Agregar Nombre y Datos como lo muestra el diseño putito 
                        //Centrar la foto, nombre y datos
                    ],
                  ),
                ),
                
                Positioned(
                  child: CurvaBlanca(),
                  bottom: 0,
                )
              ]),
              //Aqui se ingresa el contenido de la pagina
              SubTitulo("Mi Macros"),
              
              Column(
                children: <Widget>[
                  Container(
                      height: 450,
                      width: 450,
                      padding: EdgeInsets.only(bottom: 10),         
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                              _RadialProgress(  
                              ),
                              SizedBox(height: 100,),
                          ],
                      ),
                  )
                ],
              ),
            ]
        ),
      ),
    )));
  }
}

class _Dp extends StatelessWidget{
  final double height,width;
  const _Dp({Key key, this.height,this.width}): super(key: key);

  @override
  Widget build (BuildContext context){
    return Container( 
      height: 165,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            UserPhoto(assetImage: 'assets/images/perfil.jpg', size:150,),      
          ],
      ),
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
      width: 120,
      height: 120,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/perfil.jpg'),
          fit: BoxFit.cover,
          ),
          shape: BoxShape.circle,
          ),
          margin: EdgeInsets.only(bottom:5),
          );
  }
}

class _RadialProgress extends StatelessWidget {
  final double height, width, progress;

  const _RadialProgress({Key key, this.height, this.width, this.progress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _RadialPainter(
        progress: 0.9,
      ),
      child: Container(
        height: 300,
        width: 300,
        child: Center(
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                TextSpan(
                  text: "123123",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF200087),
                  ),
                ),
                TextSpan(text: "\n"),
                TextSpan(
                  text: "kcal left",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF200087),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _RadialPainter extends CustomPainter {
  final double progress;

  _RadialPainter({this.progress});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..strokeWidth = 10
      ..color = Color(0xFF66E002)
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    Offset center = Offset(size.width / 2, size.height / 2);
    double relativeProgress = 360 * progress;

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: size.width / 2),
      math.radians(-90),
      math.radians(-relativeProgress),
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}