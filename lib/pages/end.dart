import 'package:flutter/material.dart';


class EndPage extends StatefulWidget{
  @override
  _EndPageState createState() => _EndPageState();



}
class _EndPageState extends State<EndPage>{

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
          Text("Pontuação:",style: TextStyle(fontSize: 22),),
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