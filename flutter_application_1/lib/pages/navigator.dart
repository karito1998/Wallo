import 'package:flutter/material.dart';
import 'package:flutter_application_1/colors.dart';
import 'package:flutter_application_1/pages/prueba.dart';

class NavigatorBar extends StatefulWidget {
  @override
  _NavigatorBar createState() => _NavigatorBar();
}

class _NavigatorBar extends State<NavigatorBar> {
  List<Widget> _widgets = [];
  int indexPage = 0;

  @override
  void initState() {
    _widgets = [Prueba(), Prueba()];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgets[indexPage],
      bottomNavigationBar: Container(
        child: BottomNavigationBar(
          elevation: 30,
          backgroundColor: black,
          selectedItemColor: white,
          unselectedItemColor: gray,
          selectedLabelStyle: TextStyle(color: white),
          unselectedLabelStyle: TextStyle(color: gray),
          type: BottomNavigationBarType.fixed,
          currentIndex: indexPage,
          onTap: (index) {
            setState(() {
              indexPage = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: new Icon(Icons.home_filled), label: 'Inicio'),
            BottomNavigationBarItem(
                icon: new Icon(Icons.person), label: 'Mi cuenta'),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: softPurple,
        onPressed: () {},
      ),
    );
  }
}
