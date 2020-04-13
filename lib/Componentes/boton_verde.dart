import 'package:flutter/material.dart';

class BotonVerde extends StatelessWidget {

  String buttonText = "Navigate";

  BotonVerde(this.buttonText);

  @override
  Widget build(BuildContext context) {

    return InkWell(
      child: Container(
        margin: EdgeInsets.only(
          top: 0.0,
          right: 20.0
        ),
        height: 30.0,
        width: 100.0,
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

        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
              fontSize: 18.0,
              fontFamily: "Lato",
              color: Colors.white
            ),
          ),
        ),
      ),
    );
  }

}