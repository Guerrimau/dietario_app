import 'package:flutter/material.dart';
import 'animated_bottom_bar.dart';
import '../../Pantallas/PantallaInicio/pantalla_inicio.dart';

class BottomBarNavigation extends StatefulWidget {
  final List<BarItem> barItems = [
    BarItem(
      text: "Inicio",
      iconData: Icons.home,
      color: Colors.green,
    ),
    BarItem(
      text: "Dietario",
      iconData: Icons.restaurant,
      color: Colors.green,
    ),
    BarItem(
      text: "Progreso",
      iconData: Icons.show_chart,
      color: Colors.green,
    ),
    BarItem(
      text: "Perfil",
      iconData: Icons.person,
      color: Colors.green,
    ),
  ];

  @override
  _BottomBarNavigationPattern createState() =>
      _BottomBarNavigationPattern();
}

class _BottomBarNavigationPattern
    extends State<BottomBarNavigation> {
  int selectedBarIndex = 0;

  Widget callPage(int selectedBarIndex){
    switch(selectedBarIndex) {
      case 0: return PantallaInicio();
      case 1: return PantallaInicio();
      case 2: return PantallaInicio();
      case 3: return PantallaInicio();
      default: return PantallaInicio();
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: callPage(selectedBarIndex),
      bottomNavigationBar: AnimatedBottomBar(
          barItems: widget.barItems,
          animationDuration: const Duration(milliseconds: 150),
          barStyle: BarStyle(
            fontSize: 20.0,
            iconSize: 30.0
          ),
          onBarTap: (index) {
            setState(() {
              selectedBarIndex = index;
            });
          }),
    );
  }
}
