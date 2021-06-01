import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Citas',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      debugShowCheckedModeBanner: false,
      home: Casita(),
    ); //Fin MaterialApp
  } //Fin de widget
} //fin class susiapp

class Casita extends StatefulWidget {
  @override
  _CasitaState createState() {
    return _CasitaState();
  } // fin casita
} //Fin statefulwidget

class _CasitaState extends State<Casita> {
  String _value;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aparta tu cita'),
      ), //fin de App Bar
      body: Padding(
        padding: const EdgeInsets.all(1.5),
        child: Container(
          color: Colors.white,
          height: 2000,
          width: 2000,
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 170,
                width: 282,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(image: NetworkImage('https://raw.githubusercontent.com/susancerc/mis_imagenes/main/animalcrrr.jpg'), alignment: Alignment.topCenter),
                  border: Border.all(
                    color: Colors.teal[300],
                    width: 3.0,
                  ), //fin de border
                ), //fin de el decoration box
              ), //fin de el container
              SizedBox(height: 5),
              Container(
                padding: EdgeInsets.only(top: 5, bottom: 5),
                width: 572,

                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Hora',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.teal[300],
                        width: 2.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.amber,
                        width: 3.0,
                      ), //fin de bordersize
                    ), //fin de outlineInput border
                  ), //fin de inoutdecoration
                ), //fin de TextField
              ), //fin de container
              Container(
                padding: EdgeInsets.only(top: 5, bottom: 5),
                width: 572,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Nombre del cliente',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.teal[300],
                        width: 2.0,
                      ), //fin de border side
                    ), //fin de enable border
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.amber,
                        width: 3.0,
                      ), //fin de bordersize
                    ), //fin de outlineInput border
                  ), //fin de inputdecoration
                ), //fin de TextField
              ), //fin de container
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.only(top: 5, bottom: 5),
                width: 572,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Flexible(
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Nro de maquina',
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.teal[300],
                              width: 2.0,
                            ), //fin de border side
                          ), //fin de enable border
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.amber,
                              width: 3.0,
                            ), //fin de bordersize
                          ), //fin de outlineInput border
                        ), //fin de inputdecoration
                      ), //fin de TextField
                    ),
                    SizedBox(width: 16),
                    new DropdownButton<String>(
                      items: [
                        DropdownMenuItem<String>(
                          child: Text('1'),
                          value: 'one',
                        ),
                        DropdownMenuItem<String>(
                          child: Text('2'),
                          value: 'two',
                        ),
                        DropdownMenuItem<String>(
                          child: Text('3'),
                          value: 'three',
                        ),
                        DropdownMenuItem<String>(
                          child: Text('4'),
                          value: 'four',
                        ),
                        DropdownMenuItem<String>(
                          child: Text('5'),
                          value: 'five',
                        ),
                        DropdownMenuItem<String>(
                          child: Text('6'),
                          value: 'six',
                        ),
                      ],
                      onChanged: (String value) {
                        setState(() {
                          _value = value;
                        });
                      },
                      hint: Text('Selecciona'),
                      value: _value,
                    ), //fin de dropdown
                  ], //fin de widget
                ), //fin de row
              ), //fin de container
              SizedBox(height: 5),
              Container(
                padding: EdgeInsets.only(top: 5, bottom: 5),
                width: 572,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Flexible(
                      child: RaisedButton(
                        color: Colors.brown,
                        shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                        onPressed: () {
                          ;
                        },
                        child: SizedBox(
                          child: Center(
                            child: Text(
                              "AGENDAR",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 25, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    new Flexible(
                      child: RaisedButton(
                        color: Colors.amber,
                        shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                        onPressed: () {
                          ;
                        },
                        child: SizedBox(
                          child: Center(
                            child: Text(
                              "REINICIAR",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 25, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ], //fin de widget
                ), //fin de row
              ), //fin de container colores
            ], //fin de widget
          ), //fin de column
        ), //child container
      ), //fin de padding
    ); //Fin scaffold
  } //Fin de widget
} //Fin class
