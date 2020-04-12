import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:vector_math/vector_math_64.dart' as math;
import 'package:intl/intl.dart';

class Perfil extends StatelessWidget {
  
  final String titulo = "Perfil";
  final today =DateTime.now();
  
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

	 return Scaffold (
     backgroundColor: const Color(0xFF66E002),
      
      body:Stack(
        children: <Widget> [
         Positioned(
           top:0,
           height: height*0.40,
           left: 0,
           right: 0,
          
           child: Container(
             color: Color(0xFF66E002),
             padding: const EdgeInsets.only(top: 50, left: 32, right: 32, bottom: 5),
             child: Column(
               children: <Widget>[
                 ListTile(
                   title: Text(
                     "${DateFormat("EEEE").format(today)}, ${DateFormat("d MMMM").format(today)}", 
                   style: TextStyle(
                     color: Colors.white,
                     fontSize: 15,
                     fontFamily: "LATO"),
                     ),
                 subtitle: Text("Hello, Alberto Gutierrez", style: TextStyle(color: Colors.white,fontSize: 25,fontFamily: "LATO"),),
                 ),
                 _Dp(
                   width: height * 0.2,
                   height: height * 0.2,
               ),

               ], 
               
             ),
            
             ),
           
          ),
          
         Positioned(
           top:height*0.38, 
           left: 0,
           right: 0,
           
           child:Container(
              color: Colors.white,
              height: height,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 8,
                      left: 32,
                      right: 18,
                      ),
                      child: Text("Mis Macros", 
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: "LATO",
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        
                        ),
                      ),
                  ),
                  Expanded(
                         
                          child: Column(
                            
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
                         
                  ),
                ],
                
              ),
          ),
             
         
         ),
       ]
     ),
     

   );
  }
}

class _Dp extends StatelessWidget{
  final double height,width;
  const _Dp({Key key, this.height,this.width}): super(key: key);

  @override
  Widget build (BuildContext context){
    return Container( 
      height: 180,
            padding: EdgeInsets.only(bottom: 10),
            color:Color(0xFF66E002),
            
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