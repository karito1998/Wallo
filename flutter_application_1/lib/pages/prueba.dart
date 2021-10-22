import 'package:flutter/material.dart';
import 'package:flutter_application_1/colors.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Prueba extends StatefulWidget {
  @override
  _Prueba createState() => _Prueba();
}

class _Prueba extends State<Prueba> {
  final List cards = [card1(), card2(), card3()];
  var punto1 = purple;
  var punto2 = gray;
  var punto3 = gray;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          minimum: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //Campana
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                IconButton(
                    icon: Icon(Icons.notifications_none), onPressed: () {})
              ]),

              //Imagen
              Image.asset("icono.png"),
              //Texto
              Text(
                "Bienvenido a WALLO",
                style: TextStyle(fontWeight: FontWeight.bold, color: purple),
              ),
              //Carrusel
              SizedBox(height: 15),
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: 100,
                    enlargeCenterPage: true,
                    enableInfiniteScroll: false,
                    autoPlay: true,
                    onPageChanged: (index, reason) {
                      setState(() {
                        if (index == 0) {
                          punto1 = purple;
                          punto2 = gray;
                          punto3 = gray;
                        } else if (index == 1) {
                          punto1 = gray;
                          punto2 = purple;
                          punto3 = gray;
                        }
                        if (index == 2) {
                          punto1 = gray;
                          punto2 = gray;
                          punto3 = purple;
                        }
                      });
                    },
                  ),
                  items: cards.map((item) {
                    return Builder(builder: (BuildContext context) {
                      return Container(
                        decoration: BoxDecoration(boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: gray,
                              blurRadius: 25.0,
                              spreadRadius: -9,
                              offset: Offset(0.0, 15))
                        ]),
                        width: 300,
                        child: item,
                      );
                    });
                  }).toList(),
                ),
              ),
              //Puntos
              SizedBox(height: 15),
              progress(),
              Container(
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Text(
                      "Tu informacion",
                      style: TextStyle(fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                  )),

              //Datos
              Expanded(
                  child: Container(
                child: ListView(
                  children: <Widget>[
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: purple),
                        onPressed: () {},
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(15),
                              child: Text(
                                "Datos Básicos",
                                textAlign: TextAlign.left,
                              ),
                            )
                          ],
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: softGray,
                          borderRadius: BorderRadius.circular(5)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Datos básicos"),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(primary: purple),
                            onPressed: () {},
                            child: Text("Llenar"),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: softGray,
                          borderRadius: BorderRadius.circular(5)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Datos básicos"),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(primary: purple),
                            onPressed: () {},
                            child: Text("Llenar"),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: softGray,
                          borderRadius: BorderRadius.circular(5)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Datos básicos"),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(primary: purple),
                            onPressed: () {},
                            child: Text("Llenar"),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: softGray,
                          borderRadius: BorderRadius.circular(5)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Datos básicos"),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(primary: purple),
                            onPressed: () {},
                            child: Text("Llenar"),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ))
            ],
          )),
    );
  }

  Container progress() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.circle,
            size: 15,
            color: punto1,
          ),
          Icon(
            Icons.circle,
            size: 15,
            color: punto2,
          ),
          Icon(
            Icons.circle,
            size: 15,
            color: punto3,
          ),
        ],
      ),
    );
  }
}

Container card1() {
  return Container(
    height: 50,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: white,
    ),
    child: Column(
      children: <Widget>[
        Container(
          height: 30,
          decoration: BoxDecoration(
            color: purple,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          ),
        ),
        Container(
          child: Column(
            children: <Widget>[
              Text("Tu wallo ID en la vida real"),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: purple),
                  onPressed: () {},
                  child: Text("Aprender"))
            ],
          ),
        ),
      ],
    ),
  );
}

Container card2() {
  return Container(
    height: 50,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: blue,
    ),
    child: Column(
      children: <Widget>[
        Container(
          height: 30,
          decoration: BoxDecoration(
            color: purple,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          ),
        ),
        Container(
          child: Column(
            children: <Widget>[
              Text("Tu wallo ID en la vida real"),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: purple),
                  onPressed: () {},
                  child: Text("Aprender"))
            ],
          ),
        ),
      ],
    ),
  );
}

Container card3() {
  return Container(
    height: 50,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: white,
    ),
    child: Column(
      children: <Widget>[
        Container(
          height: 30,
          decoration: BoxDecoration(
            color: purple,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          ),
        ),
        Container(
          child: Column(
            children: <Widget>[
              Text("Tu wallo ID en la vida real"),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: purple),
                  onPressed: () {},
                  child: Text("Aprender"))
            ],
          ),
        ),
      ],
    ),
  );
}
