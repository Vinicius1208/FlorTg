import 'dart:async';

import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flor_e_ser_app/pages/home.dart';
import 'package:flor_e_ser_app/pages/quiz-bloc.dart';
import 'package:flor_e_ser_app/pages/quizModel.dart';
import 'package:flutter/material.dart';
import 'package:flor_e_ser_app/layout.dart';
import 'package:rxdart/rxdart.dart';

class QuizPage extends StatefulWidget{
  @override
  _QuizPageState createState() => _QuizPageState();


}

class _QuizPageState extends State<QuizPage>{

  final QuizBloc bloc = BlocProvider.getBloc<QuizBloc>();

  int selectedRadio;
   setSelectedRadio(int value){
    setState(() {
      selectedRadio = value ;
    });
  }



//   int somas = 0;
//  void somarAlternativas(){
//    setState(() {
//      somas++;
//    });
//  }



  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: AppBar(
        title: Text('Questão 1'),
      ),
      body: Column(
        children: <Widget>[
          Text('Tem poucos ou nenhum colega. Manifesta desejo de tê-los?', style: TextStyle(fontSize: 28),),
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/top.jpeg'), fit: BoxFit.cover
                )
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Radio(
                  value: bloc.outCount,
//                  StreamBuilder(
//                    stream: bloc.outCount,
//
//                    builder: (BuildContext context, AsyncSnapshot snapshot){
//                      return Text("aquiii $snapshot.data");
//                    },
//
//                  ),
                  groupValue: selectedRadio,
                  activeColor: Layout.success(),
                  onChanged: (value){
                    print("Radio1 $value");
                    setState(() {
                      setSelectedRadio(value);
                    });
                  }
              ),
              Text('Sim ' ),


              Radio(
                value: 2,
                activeColor: Layout.success(),
                groupValue: selectedRadio,
                onChanged: (value){
                  setState(() {
                    print("Radio2 $value");
                    setSelectedRadio(value);
                  });
                }
              ),
              Text('Não'),
            ],
          ),
          Row(

            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text('voltar'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },

              ),
              RaisedButton(
                child: Text('proximo'),
                onPressed:
                    ()
                {
                  bloc.increment();

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota2()),
                  );
                },
             ),
            ],
          ),
        ],
      ),
    );

  }

}

class Rota2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Questao 2"),
      ),
      body: Column(
        children: <Widget>[
          Text('Prefere estar na companhia dos mais velhos ?', style: TextStyle(fontSize: 28),),
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/top.jpeg'), fit: BoxFit.cover
                )
            ),
          ),
          Row(
            children: <Widget>[
//              Radio(
//                  value: somas,
//                  groupValue: selectedRadio,
//                  activeColor: Layout.success(),
//                  onChanged: (value){
//                    print("Radio1 $value");
//                    setState(() {
//                      setSelectedRadio(value);
//                    });
//                  }
//              ),
              Radio(value: null,
                  groupValue: null,
                  onChanged: null),
            ],
          ),
          Row(
            children: <Widget>[
              RaisedButton(
                child: Text('voltar'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => QuizPage()),
                  );
                },
              ),
              RaisedButton(
                child: Text('proximo'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota3()),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Rota3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Questao 3"),
      ),
      body: Column(
        children: <Widget>[
          Text('Faz comentários/perguntas inconvenientes?', style: TextStyle(fontSize: 28),),
          Row(
            children: <Widget>[
              Radio(value: null, groupValue: null, onChanged: null),
              Radio(value: null, groupValue: null, onChanged: null),
            ],
          ),
          Row(
            children: <Widget>[
              RaisedButton(
                child: Text('voltar'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota2()),
                  );
                },
              ),
              RaisedButton(
                child: Text('proximo'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota4()),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Rota4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Questao 4"),
      ),
      body: Column(
        children: <Widget>[
          Text('Isola-se no recreio, brinca sozinho ou procura um lugar mais calmo?', style: TextStyle(fontSize: 28),),
          Row(
            children: <Widget>[
              Radio(value: null, groupValue: null, onChanged: null),
              Radio(value: null, groupValue: null, onChanged: null),
            ],
          ),
          Row(
            children: <Widget>[
              RaisedButton(
                child: Text('voltar'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota3()),
                  );
                },
              ),
              RaisedButton(
                child: Text('proximo'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota5()),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Rota5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Questao 5"),
      ),
      body: Column(
        children: <Widget>[
          Text('Não segue as modas de roupas ou brincadeiras?', style: TextStyle(fontSize: 28),),
          Row(
            children: <Widget>[
              Radio(value: null, groupValue: null, onChanged: null),
              Radio(value: null, groupValue: null, onChanged: null),
            ],
          ),
          Row(
            children: <Widget>[
              RaisedButton(
                child: Text('voltar'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota4()),
                  );
                },
              ),
              RaisedButton(
                child: Text('proximo'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota6()),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Rota6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Questao 6"),
      ),
      body: Column(
        children: <Widget>[
          Text('Demonstra grande tristeza ou afeto desproporcional?', style: TextStyle(fontSize: 28),),
          Row(
            children: <Widget>[
              Radio(value: null, groupValue: null, onChanged: null),
              Radio(value: null, groupValue: null, onChanged: null),
            ],
          ),
          Row(
            children: <Widget>[
              RaisedButton(
                child: Text('voltar'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota5()),
                  );
                },
              ),
              RaisedButton(
                child: Text('proximo'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota7()),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Rota7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Questao 7"),
      ),
      body: Column(
        children: <Widget>[
          Text('Tem dificuldade em lidar com emoções negativas?', style: TextStyle(fontSize: 28),),
          Row(
            children: <Widget>[
              Radio(value: null, groupValue: null, onChanged: null),
              Radio(value: null, groupValue: null, onChanged: null),
            ],
          ),
          Row(
            children: <Widget>[
              RaisedButton(
                child: Text('voltar'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota6()),
                  );
                },
              ),
              RaisedButton(
                child: Text('proximo'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota8()),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Rota8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Questao 8"),
      ),
      body: Column(
        children: <Widget>[
          Text('É alvo de piada por parte dos colegas?', style: TextStyle(fontSize: 28),),
          Row(
            children: <Widget>[
              Radio(value: null, groupValue: null, onChanged: null),
              Radio(value: null, groupValue: null, onChanged: null),
            ],
          ),
          Row(
            children: <Widget>[
              RaisedButton(
                child: Text('voltar'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota7()),
                  );
                },
              ),
              RaisedButton(
                child: Text('proximo'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota9()),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );

  }
}

class Rota9 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Questao 9"),
      ),
      body: Column(
        children: <Widget>[
          Text('É ingênuo, crédulo?', style: TextStyle(fontSize: 28),),
          Row(
            children: <Widget>[
              Radio(value: null, groupValue: null, onChanged: null),
              Radio(value: null, groupValue: null, onChanged: null),
            ],
          ),
          Row(
            children: <Widget>[
              RaisedButton(
                child: Text('voltar'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota8()),
                  );
                },
              ),
              RaisedButton(
                child: Text('proximo'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota10()),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Rota10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Questao 10"),
      ),
      body: Column(
        children: <Widget>[
          Text('Tenta impor aos outros seus interesses, não consegue estabelecer diálogos?', style: TextStyle(fontSize: 28),),
          Row(
            children: <Widget>[
              Radio(value: null, groupValue: null, onChanged: null),
              Radio(value: null, groupValue: null, onChanged: null),
            ],
          ),
          Row(
            children: <Widget>[
              RaisedButton(
                child: Text('voltar'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota9()),
                  );
                },
              ),
              RaisedButton(
                child: Text('proximo'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota11()),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Rota11 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Questao 11"),
      ),
      body: Column(
        children: <Widget>[
          Text('Tem dificuldade em compreender piadas?', style: TextStyle(fontSize: 28),),
          Row(
            children: <Widget>[
              Radio(value: null, groupValue: null, onChanged: null),
              Radio(value: null, groupValue: null, onChanged: null),
            ],
          ),
          Row(
            children: <Widget>[
              RaisedButton(
                child: Text('voltar'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota10()),
                  );
                },
              ),
              RaisedButton(
                child: Text('proximo'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota12()),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Rota12 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Questao 12"),
      ),
      body: Column(
        children: <Widget>[
          Text('Tem dificuldade em perceber quando está sendo ridicularizado?', style: TextStyle(fontSize: 28),),
          Row(
            children: <Widget>[
              Radio(value: null, groupValue: null, onChanged: null),
              Radio(value: null, groupValue: null, onChanged: null),
            ],
          ),
          Row(
            children: <Widget>[
              RaisedButton(
                child: Text('voltar'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota11()),
                  );
                },
              ),
              RaisedButton(
                child: Text('proximo'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota13()),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Rota13 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Questao 4"),
      ),
      body: Column(
        children: <Widget>[
          Text('Não muda a voz (tom, volume, ritmo). Fala alto?', style: TextStyle(fontSize: 28),),
          Row(
            children: <Widget>[
              Radio(value: null, groupValue: null, onChanged: null),
              Radio(value: null, groupValue: null, onChanged: null),
            ],
          ),
          Row(
            children: <Widget>[
              RaisedButton(
                child: Text('voltar'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota12()),
                  );
                },
              ),
              RaisedButton(
                child: Text('proximo'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota14()),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Rota14 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Questao 14"),
      ),
      body: Column(
        children: <Widget>[
          Text('Tem dificuldade em compreender gírias?', style: TextStyle(fontSize: 28),),
          Row(
            children: <Widget>[
              Radio(value: null, groupValue: null, onChanged: null),
              Radio(value: null, groupValue: null, onChanged: null),
            ],
          ),
          Row(
            children: <Widget>[
              RaisedButton(
                child: Text('voltar'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota13()),
                  );
                },
              ),
              RaisedButton(
                child: Text('proximo'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota15()),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Rota15 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Questao 6"),
      ),
      body: Column(
        children: <Widget>[
          Text('Evita ou desvia o olhar?', style: TextStyle(fontSize: 28),),
          Row(
            children: <Widget>[
              Radio(value: null, groupValue: null, onChanged: null),
              Radio(value: null, groupValue: null, onChanged: null),
            ],
          ),
          Row(
            children: <Widget>[
              RaisedButton(
                child: Text('voltar'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota14()),
                  );
                },
              ),
              RaisedButton(
                child: Text('proximo'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota16()),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Rota16 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Questao 16"),
      ),
      body: Column(
        children: <Widget>[
          Text('Tem um interesse intenso em um tema ou atividade?', style: TextStyle(fontSize: 28),),
          Row(
            children: <Widget>[
              Radio(value: null, groupValue: null, onChanged: null),
              Radio(value: null, groupValue: null, onChanged: null),
            ],
          ),
          Row(
            children: <Widget>[
              RaisedButton(
                child: Text('voltar'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota15()),
                  );
                },
              ),
              RaisedButton(
                child: Text('proximo'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota17()),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Rota17 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Questao 8"),
      ),
      body: Column(
        children: <Widget>[
          Text('Estabelece hábitos ou rituais?', style: TextStyle(fontSize: 28),),
          Row(
            children: <Widget>[
              Radio(value: null, groupValue: null, onChanged: null),
              Radio(value: null, groupValue: null, onChanged: null),
            ],
          ),
          Row(
            children: <Widget>[
              RaisedButton(
                child: Text('voltar'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota16()),
                  );
                },
              ),
              RaisedButton(
                child: Text('proximo'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota18()),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );

  }
}

class Rota18 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Questao 18"),
      ),
      body: Column(
        children: <Widget>[
          Text('Fica ansioso com mudanças na sua rotina?', style: TextStyle(fontSize: 28),),
          Row(
            children: <Widget>[
              Radio(value: null, groupValue: null, onChanged: null),
              Radio(value: null, groupValue: null, onChanged: null),
            ],
          ),
          Row(
            children: <Widget>[
              RaisedButton(
                child: Text('voltar'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota17()),
                  );
                },
              ),
              RaisedButton(
                child: Text('proximo'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota19()),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Rota19 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Questao 19"),
      ),
      body: Column(
        children: <Widget>[
          Text('Tem movimentos repetitivos (balançar mãos e estalar os dedos)?', style: TextStyle(fontSize: 28),),
          Row(
            children: <Widget>[
              Radio(value: null, groupValue: null, onChanged: null),
              Radio(value: null, groupValue: null, onChanged: null),
            ],
          ),
          Row(
            children: <Widget>[
              RaisedButton(
                child: Text('voltar'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota18()),
                  );
                },
              ),
              RaisedButton(
                child: Text('proximo'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota20()),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Rota20 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Questao 20"),
      ),
      body: Column(
        children: <Widget>[
          Text('Fica nervoso ou em pânico com situações imprevistas?', style: TextStyle(fontSize: 28),),
          Row(
            children: <Widget>[
              Radio(value: null, groupValue: null, onChanged: null),
              Radio(value: null, groupValue: null, onChanged: null),
            ],
          ),
          Row(
            children: <Widget>[
              RaisedButton(
                child: Text('voltar'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota19()),
                  );
                },
              ),
              RaisedButton(
                child: Text('proximo'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota21()),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Rota21 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Questao 21"),
      ),
      body: Column(
        children: <Widget>[
          Text('Tem dificuldade para: vestir, despir, abotoar, dar laço...?', style: TextStyle(fontSize: 28),),
          Row(
            children: <Widget>[
              Radio(value: null, groupValue: null, onChanged: null),
              Radio(value: null, groupValue: null, onChanged: null),
            ],
          ),
          Row(
            children: <Widget>[
              RaisedButton(
                child: Text('voltar'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota20()),
                  );
                },
              ),
              RaisedButton(
                child: Text('proximo'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota22()),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Rota22 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Questao 22"),
      ),
      body: Column(
        children: <Widget>[
          Text('Apresenta má caligrafia?', style: TextStyle(fontSize: 28),),
          Row(
            children: <Widget>[
              Radio(value: null, groupValue: null, onChanged: null),
              Radio(value: null, groupValue: null, onChanged: null),
            ],
          ),
          Row(
            children: <Widget>[
              RaisedButton(
                child: Text('voltar'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota21()),
                  );
                },
              ),
              RaisedButton(
                child: Text('proximo'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota23()),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Rota23 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Questao 23"),
      ),
      body: Column(
        children: <Widget>[
          Text('Parece desajeitado nos movimentos?', style: TextStyle(fontSize: 28),),
          Row(
            children: <Widget>[
              Radio(value: null, groupValue: null, onChanged: null),
              Radio(value: null, groupValue: null, onChanged: null),
            ],
          ),
          Row(
            children: <Widget>[
              RaisedButton(
                child: Text('voltar'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota22()),
                  );
                },
              ),
              RaisedButton(
                child: Text('proximo'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota24()),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Rota24 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Questao 24"),
      ),
      body: Column(
        children: <Widget>[
          Text('Fica rígido ou repele quando é agarrado?', style: TextStyle(fontSize: 28),),
          Row(
            children: <Widget>[
              Radio(value: null, groupValue: null, onChanged: null),
              Radio(value: null, groupValue: null, onChanged: null),
            ],
          ),
          Row(
            children: <Widget>[
              RaisedButton(
                child: Text('voltar'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota23()),
                  );
                },
              ),
              RaisedButton(
                child: Text('proximo'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota25()),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Rota25 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Questao 25"),
      ),
      body: Column(
        children: <Widget>[
          Text('Fica excessivamente incomodado com som alto, súbito ou estridente (aspirador, furadeira, foguetes)?', style: TextStyle(fontSize: 28),),
          Row(
            children: <Widget>[
              Radio(value: null, groupValue: null, onChanged: null),
              Radio(value: null, groupValue: null, onChanged: null),
            ],
          ),
          Row(
            children: <Widget>[
              RaisedButton(
                child: Text('voltar'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota24()),
                  );
                },
              ),
              RaisedButton(
                child: Text('proximo'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota26()),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Rota26 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Questao 26"),
      ),
      body: Column(
        children: <Widget>[
          Text('Prefere usar roupas folgadas, sem etiquetas e feitas de algodão?', style: TextStyle(fontSize: 28),),
          Row(
            children: <Widget>[
              Radio(value: null, groupValue: null, onChanged: null),
              Radio(value: null, groupValue: null, onChanged: null),
            ],
          ),
          Row(
            children: <Widget>[
              RaisedButton(
                child: Text('voltar'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota25()),
                  );
                },
              ),
              RaisedButton(
                child: Text('proximo'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota27()),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );

  }
}

class Rota27 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Questao 27"),
      ),
      body: Column(
        children: <Widget>[
          Text('Tem uma reação excessiva a luz?', style: TextStyle(fontSize: 28),),
          Row(
            children: <Widget>[
              Radio(value: null, groupValue: null, onChanged: null),
              Radio(value: null, groupValue: null, onChanged: null),
            ],
          ),
          Row(
            children: <Widget>[
              RaisedButton(
                child: Text('voltar'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota26()),
                  );
                },
              ),
              RaisedButton(
                child: Text('proximo'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota28()),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Rota28 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Questao 28"),
      ),
      body: Column(
        children: <Widget>[
          Text('Tem sensibilidade a dor ou temperatura?', style: TextStyle(fontSize: 28),),
          Row(
            children: <Widget>[
              Radio(value: null, groupValue: null, onChanged: null),
              Radio(value: null, groupValue: null, onChanged: null),
            ],
          ),
          Row(
            children: <Widget>[
              RaisedButton(
                child: Text('voltar'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota27()),
                  );
                },
              ),
              RaisedButton(
                child: Text('proximo'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota29()),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Rota29 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Questao 29"),
      ),
      body: Column(
        children: <Widget>[
          Text('Tem comportamento alimentar diferenciado?', style: TextStyle(fontSize: 28),),
          Row(
            children: <Widget>[
              Radio(value: null, groupValue: null, onChanged: null),
              Radio(value: null, groupValue: null, onChanged: null),
            ],
          ),
          Row(
            children: <Widget>[
              RaisedButton(
                child: Text('voltar'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota28()),
                  );
                },
              ),
              RaisedButton(
                child: Text('proximo'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota30()),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Rota30 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Questao 30"),
      ),
      body: Column(
        children: <Widget>[
          Text('Impressão de que às vezes ouve bem e às vezes não?', style: TextStyle(fontSize: 28),),
          Row(
            children: <Widget>[
              Radio(value: null, groupValue: null, onChanged: null),
              Radio(value: null, groupValue: null, onChanged: null),
            ],
          ),
          Row(
            children: <Widget>[
              RaisedButton(
                child: Text('voltar'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota29()),
                  );
                },
              ),
              RaisedButton(
                child: Text('proximo'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota31()),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Rota31 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Questao 31"),
      ),
      body: Column(
        children: <Widget>[
          Text('Perguntas referente ao comportamento escolar, sempre é importante ter um dialogo continuo com o professor, manter uma boa relação pode ajudar muito no desempenho?', style: TextStyle(fontSize: 28),),
          Row(
            children: <Widget>[
              Radio(value: null, groupValue: null, onChanged: null),
              Radio(value: null, groupValue: null, onChanged: null),
            ],
          ),
          Row(
            children: <Widget>[
              RaisedButton(
                child: Text('voltar'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota30()),
                  );
                },
              ),
              RaisedButton(
                child: Text('proximo'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota32()),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Rota32 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Escolar"),
      ),
      body: Column(
        children: <Widget>[
          Text('A criança desvia o olhar quando se esta falando com ela?', style: TextStyle(fontSize: 28),),
          Row(
            children: <Widget>[
              Radio(value: null, groupValue: null, onChanged: null),
              Radio(value: null, groupValue: null, onChanged: null),
            ],
          ),
          Row(
            children: <Widget>[
              RaisedButton(
                child: Text('voltar'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota31()),
                  );
                },
              ),
              RaisedButton(
                child: Text('proximo'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota33()),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Rota33 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Questao 32"),
      ),
      body: Column(
        children: <Widget>[
          Text('Dificuldade de manter a atenção (cabeça de vento)?', style: TextStyle(fontSize: 28),),
          Row(
            children: <Widget>[
              Radio(value: null, groupValue: null, onChanged: null),
              Radio(value: null, groupValue: null, onChanged: null),
            ],
          ),
          Row(
            children: <Widget>[
              RaisedButton(
                child: Text('voltar'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota32()),
                  );
                },
              ),
              RaisedButton(
                child: Text('proximo'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota34()),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Rota34 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Questao 33"),
      ),
      body: Column(
        children: <Widget>[
          Text('Não segue as instruções e nem termina as lições (mula empacada)?', style: TextStyle(fontSize: 28),),
          Row(
            children: <Widget>[
              Radio(value: null, groupValue: null, onChanged: null),
              Radio(value: null, groupValue: null, onChanged: null),
            ],
          ),
          Row(
            children: <Widget>[
              RaisedButton(
                child: Text('voltar'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota33()),
                  );
                },
              ),
              RaisedButton(
                child: Text('proximo'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota35()),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Rota35 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Questao 34"),
      ),
      body: Column(
        children: <Widget>[
          Text('Perde objetos com facilidade (avoada)?', style: TextStyle(fontSize: 28),),
          Row(
            children: <Widget>[
              Radio(value: null, groupValue: null, onChanged: null),
              Radio(value: null, groupValue: null, onChanged: null),
            ],
          ),
          Row(
            children: <Widget>[
              RaisedButton(
                child: Text('voltar'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota34()),
                  );
                },
              ),
              RaisedButton(
                child: Text('proximo'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota36()),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );

  }
}

class Rota36 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Questao 35"),
      ),
      body: Column(
        children: <Widget>[
          Text('Distrai-se facilmente (avoada)?', style: TextStyle(fontSize: 28),),
          Row(
            children: <Widget>[
              Radio(value: null, groupValue: null, onChanged: null),
              Radio(value: null, groupValue: null, onChanged: null),
            ],
          ),
          Row(
            children: <Widget>[
              RaisedButton(
                child: Text('voltar'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota35()),
                  );
                },
              ),
              RaisedButton(
                child: Text('proximo'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota37()),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Rota37 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Questao 36"),
      ),
      body: Column(
        children: <Widget>[
          Text('Muda de uma atividade para outra (estraga-prazeres)?', style: TextStyle(fontSize: 28),),
          Row(
            children: <Widget>[
              Radio(value: null, groupValue: null, onChanged: null),
              Radio(value: null, groupValue: null, onChanged: null),
            ],
          ),
          Row(
            children: <Widget>[
              RaisedButton(
                child: Text('voltar'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota36()),
                  );
                },
              ),
              RaisedButton(
                child: Text('proximo'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota38()),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Rota38 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Questao 37"),
      ),
      body: Column(
        children: <Widget>[
          Text('Tem dificuldade em brincar em silencio (pestinha)?', style: TextStyle(fontSize: 28),),
          Row(
            children: <Widget>[
              Radio(value: null, groupValue: null, onChanged: null),
              Radio(value: null, groupValue: null, onChanged: null),
            ],
          ),
          Row(
            children: <Widget>[
              RaisedButton(
                child: Text('voltar'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota37()),
                  );
                },
              ),
              RaisedButton(
                child: Text('proximo'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota39()),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Rota39 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Questao 38"),
      ),
      body: Column(
        children: <Widget>[
          Text('Fala excessivamente (enrolada)?', style: TextStyle(fontSize: 28),),
          Row(
            children: <Widget>[
              Radio(value: null, groupValue: null, onChanged: null),
              Radio(value: null, groupValue: null, onChanged: null),
            ],
          ),
          Row(
            children: <Widget>[
              RaisedButton(
                child: Text('voltar'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota38()),
                  );
                },
              ),
              RaisedButton(
                child: Text('proximo'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota40()),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Rota40 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Questao 39"),
      ),
      body: Column(
        children: <Widget>[
          Text('Responde antes de se completar as perguntas (linguaruda)?', style: TextStyle(fontSize: 28),),
          Row(
            children: <Widget>[
              Radio(value: null, groupValue: null, onChanged: null),
              Radio(value: null, groupValue: null, onChanged: null),
            ],
          ),
          Row(
            children: <Widget>[
              RaisedButton(
                child: Text('voltar'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota39()),
                  );
                },
              ),
              RaisedButton(
                child: Text('proximo'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota41()),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Rota41 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Questao 40"),
      ),
      body: Column(
        children: <Widget>[
          Text('Dificuldade em esperar a sua vez (furão, entrão, abelhudo)?', style: TextStyle(fontSize: 28),),
          Row(
            children: <Widget>[
              Radio(value: null, groupValue: null, onChanged: null),
              Radio(value: null, groupValue: null, onChanged: null),
            ],
          ),
          Row(
            children: <Widget>[
              RaisedButton(
                child: Text('voltar'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota40()),
                  );
                },
              ),
              RaisedButton(
                child: Text('proximo'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota42()),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Rota42 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Questao 41"),
      ),
      body: Column(
        children: <Widget>[
          Text('Mexe as mãos, os pés e se levanta da cadeira (bixho carpinteiro)?', style: TextStyle(fontSize: 28),),
          Row(
            children: <Widget>[
              Radio(value: null, groupValue: null, onChanged: null),
              Radio(value: null, groupValue: null, onChanged: null),
            ],
          ),
          Row(
            children: <Widget>[
              RaisedButton(
                child: Text('voltar'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota41()),
                  );
                },
              ),
              RaisedButton(
                child: Text('proximo'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota43()),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Rota43 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Questao 42"),
      ),
      body: Column(
        children: <Widget>[
          Text('Hiperativas, diferentes em tudo: Joãozinho, Maria Machadinho?', style: TextStyle(fontSize: 28),),
          Row(
            children: <Widget>[
              Radio(value: null, groupValue: null, onChanged: null),
              Radio(value: null, groupValue: null, onChanged: null),
            ],
          ),
          Row(
            children: <Widget>[
              RaisedButton(
                child: Text('voltar'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rota42()),
                  );
                },
              ),
              RaisedButton(
                child: Text('proximo'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}