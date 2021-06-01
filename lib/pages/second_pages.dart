import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: Colors.brown,
              title: Text('Cyber Postres y Cafe'),
            ), // fin de scaffold
            body: Container(
                child: ListView(
              children: <Widget>[
                _items('https://raw.githubusercontent.com/susancerc/muestracafe/main/cafe1.jpg', 'Iced Coffee Canelita'),
                SizedBox(height: 5.0),
                _items('https://raw.githubusercontent.com/susancerc/muestracafe/main/cafe2.jpg', 'Mocha Image'),
                SizedBox(height: 5.0),
                _items('https://raw.githubusercontent.com/susancerc/muestracafe/main/cafe3.jpg', 'Sandwich Tom Nook'),
                SizedBox(height: 5.0),
                _items('https://raw.githubusercontent.com/susancerc/muestracafe/main/cake1.jpg', 'Caramel Totakeke'),
                SizedBox(height: 5.0),
                _items('https://raw.githubusercontent.com/susancerc/muestracafe/main/descof1.jpg', 'Baarbara Bread'),
                SizedBox(height: 5.0),
                _items('https://raw.githubusercontent.com/susancerc/muestracafe/main/desert1.jpg', 'Cake Coco'),
                SizedBox(height: 5.0),
              ], // fin de widget
            )))); // fin de material app
  } // fin de widget

  Widget _items(String url, String producto) {
    return Container(
      padding: EdgeInsets.only(top: 5.0, right: 10.0, left: 10.0),
      child: Card(
        color: Colors.yellow[400],
        elevation: 10.0,
        child: Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(left: 1.0),
                padding: EdgeInsets.only(left: 0.5),
                child: ListTile(
                  contentPadding: EdgeInsets.only(left: 0.2),
                  leading: CircleAvatar(
                    backgroundColor: Colors.indigo[300],
                    backgroundImage: NetworkImage(url),
                    maxRadius: 35.0,
                  ), //circle avatar y listtile
                  title: Text(producto, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0)),
                  subtitle: Text('Disponible Sucursal CBTIS 128', style: TextStyle(fontSize: 9.0)), //solid state drive
                  trailing: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.white,
                  ), // fin icon
                )) //fin container
          ], //fin <widget>
        ), //fin app bar
      ), // fin scaffold
    ); // fin material app
  } // fin widget build
} // fin de SusiTarjeta
