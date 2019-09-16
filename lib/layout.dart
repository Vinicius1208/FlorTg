import 'package:flutter/material.dart';
import 'package:flor_e_ser_app/pages/home.dart';
import 'package:flor_e_ser_app/pages/about.dart';

class Layout{

static BuildContext scaffoldContext;


static final pages = [
  HomePage.tag,
  AboutPage.tag,
];

static int currItem = 0;

static Scaffold getContent(BuildContext context, content, [bool showbottom = true]) {

  BottomNavigationBar bottomNavBar = BottomNavigationBar(
    currentIndex: currItem,
    fixedColor: primary(),
    items: <BottomNavigationBarItem>[
      BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
      BottomNavigationBarItem(icon: Icon(Icons.question_answer), title: Text('Sobre')),
      // BottomNavigationBarItem(icon: Icon(Icons.settings), title: Text('Configurações'))
    ],
    onTap: (int i) {
      currItem = i;
      Navigator.of(context).pushReplacementNamed(pages[i]);
    },
  );

  return Scaffold(
    appBar: AppBar(
      backgroundColor: primary(),
      title: Text('FloreSer'),

    ),
    bottomNavigationBar: showbottom ? bottomNavBar : null,
    body: new Builder(
      builder: (BuildContext context) {

        // Store the scaffold context to show snackbars
        Layout.scaffoldContext = context;

        return content;
      },
    ),
  );
}



static Color primary([double opacity = 1]) => Color.fromRGBO(62, 63, 89, opacity);
static Color secondary([double opacity = 1]) => Color.fromRGBO(150, 150, 150, opacity);
static Color light([double opacity = 1]) => Color.fromRGBO(242, 234, 228, opacity);
static Color dark([double opacity = 1]) => Color.fromRGBO(51, 51, 51, opacity);

static Color danger([double opacity = 1]) => Color.fromRGBO(217, 74, 74, opacity);
static Color success([double opacity = 1]) => Color.fromRGBO(5, 100, 50, opacity);
static Color info([double opacity = 1]) => Color.fromRGBO(100, 150, 255, opacity);
static Color warning([double opacity = 1]) => Color.fromRGBO(166, 134, 0, opacity);

}
