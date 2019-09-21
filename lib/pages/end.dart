import 'dart:async';

import 'package:flor_e_ser_app/pages/quizModel.dart';
import 'package:flutter/material.dart';
import 'package:flor_e_ser_app/pages/quiz.dart';
import 'package:flor_e_ser_app/pages/quiz-bloc.dart';


class EndPage extends StatefulWidget{
  @override
  _EndPageState createState() => _EndPageState();



}
class _EndPageState extends State<EndPage>{

//  QuizBloc bloc;
//
//  @override
//  void initState(){
//    super.initState();
//    bloc = QuizBloc();
//  }
//
//  @override
//  void dispose(){
//    bloc.dispose();
//    super.dispose();
//  }

  bool isSelected = false;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Resultado"),),
      body: Column(
        children: <Widget>[
          Text("Se a criança apresentou qualquer similiradidade apresentada nas"
              " perguntas sugerimos a procura de um profissional"
              " Neurologista, mas a pontuação de alternativas foram:",style: TextStyle(fontSize: 22),),

//          StreamBuilder<QuizModel>(
//            stream: bloc.outBloc,
//              builder: (BuildContext context, AsyncSnapshot<QuizModel> snapshot){
//                return snapshot.hasData? Text(snapshot.data.text) : Text ("Carregando");
//              }
//          ),
          Text("Temos disponivel dicas e sugestões que serão exibidas diariamente, "
              "mas para isso é necessario que aceite esta opção:",style: TextStyle(fontSize: 22),),

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Checkbox(
                  value: this.isSelected,
                  onChanged: (bool value){
                    setState(() {
                      this.isSelected = value;
                    });
                  },
              ),
              GestureDetector(
                child:  Text("Aceita receber dicas, noticias e sujestões diariamente?"),
                onTap: (){
                  setState(() {
                    this.isSelected = !this.isSelected;
                  });
                },
              ),

            ],
          )


        ],
      ),
    );
  }

}