import 'dart:async';

import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flor_e_ser_app/pages/quizModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:rxdart/rxdart.dart';




class QuizBloc extends BlocBase {


  var counter = 0;
    var _counterController = BehaviorSubject.seeded(0);
    Stream<int> get outCount =>  _counterController.stream;
    Sink<int> get inCount => _counterController.sink;

    void increment(){
      counter++;
      inCount.add(_counterController.value+1);
    }

  @override
  void dispose() {
    super.dispose();
    _counterController.close();
  }






//  QuizModel model = QuizModel("Somas");
//  BehaviorSubject<QuizModel> _controller =
//          BehaviorSubject<QuizModel>();
//      Stream<QuizModel> get outBloc => _controller.stream;
//      Sink<QuizModel> get inBloc => _controller.sink;
//       onPressed(){
//        inBloc.add(model);
//      }
//      dispose(){
//        _controller.close();
//      }
 }