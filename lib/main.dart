import 'package:flutter/material.dart';
import 'package:susan/pages/first_pages.dart';
import 'package:susan/pages/second_pages.dart';
import 'package:susan/pages/third_pages.dart';
import 'package:susan/pages/forth_pages.dart';

void main() => runApp(SusanEmp());

class SusanEmp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Empresa ANDROID CERVANTES',
      home: PInicio(),
    ); //fin materialapp
  } // fin de widget
} //fin clase susanemp

class PInicio extends StatefulWidget {
  @override
  _PInicioState createState() => _PInicioState();
} //fin class pinicio

class _PInicioState extends State<PInicio> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    Widget child;
    switch (_index) {
      case 0:
        child = MaterialApp(debugShowCheckedModeBanner: false, home: new FirstPage());
        break;
      case 1:
        child = MaterialApp(debugShowCheckedModeBanner: false, home: new SecondPage());
        break;
      case 2:
        child = MaterialApp(debugShowCheckedModeBanner: false, home: new ThirdPage());
        break;
      case 3:
        child = MaterialApp(debugShowCheckedModeBanner: false, home: new ForthPage());
    } //fin de switch
    return Scaffold(
      body: SizedBox.expand(child: child),
      bottomNavigationBar: BottomNavigationBar(onTap: (newIndex) => setState(() => _index = newIndex), currentIndex: _index, items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.brown, size: 30.0), //fin de icon
            title: Text('Inicio')),
        BottomNavigationBarItem(
            icon: Icon(Icons.restaurant_menu, color: Colors.brown, size: 30.0), //fin de icon
            title: Text('Menu')),
        BottomNavigationBarItem(
            icon: Icon(Icons.event, color: Colors.brown, size: 30.0), //fin de icon
            title: Text('Agenda')),
        BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.brown, size: 30.0), //fin de icon
            title: Text('Cliente')),
      ]), // bottom
    ); //fin de scaffold
  } //fin de widget
} //fin de piniciostate
