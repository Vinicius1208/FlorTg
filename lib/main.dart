import 'package:flutter/material.dart';
import 'package:flor_e_ser_app/pages/home.dart';
import 'package:flor_e_ser_app/pages/about.dart';
import 'package:flor_e_ser_app/pages/form.dart';
import 'package:flor_e_ser_app/layout.dart';
import 'package:flor_e_ser_app/pages/quiz.dart';

void main() => runApp(Floreser ());

class Floreser extends StatelessWidget {

  final routes = <String, WidgetBuilder>{
    HomePage.tag: (context) => HomePage(),
    AboutPage.tag: (context) => AboutPage(),
    FormaPage.tag: (context) => FormaPage(),


  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'FloeSer',
        theme: ThemeData(
            primaryColor: Layout.primary(),
            accentColor: Layout.secondary(),
            textTheme: TextTheme(
                headline: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
                title: TextStyle(fontSize: 24, fontStyle: FontStyle.italic, color: Layout.primary()),
                body1: TextStyle(fontSize: 14)
            )
        ),
        home: HomePage(),
        routes: routes
    );
  }


}

