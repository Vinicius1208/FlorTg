import 'package:flor_e_ser_app/pages/home.dart';
import 'package:flutter/material.dart';



class FormaPage extends StatefulWidget {

  static String tag = 'form-page';
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormaPage> {
  GlobalKey<FormState> _key = new GlobalKey();
  bool _validate = false;
  String nome, idade;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Formulário com Validação'),
        ),
        body: new SingleChildScrollView(
          child: new Container(
            margin: new EdgeInsets.all(15.0),
            child: new Form(
              key: _key,
              autovalidate: _validate,
              child: _formUI(),
            ),
          ),
        ),
      ),
    );
  }

  Widget _formUI() {
    return new Column(

      children: <Widget>[
        new TextFormField(
          decoration: new InputDecoration(hintText: 'Nome Completo'),
          maxLength: 40,
          validator: _validarNome,
          onSaved: (String val) {
            nome = val;
          },
        ),
        new TextFormField(
            decoration: new InputDecoration(hintText: 'Idade'),
            keyboardType: TextInputType.datetime,
            maxLength: 2,
            validator: _validarIdade,
            onSaved: (String val) {
              idade = val;
            }),

        new SizedBox(height: 15.0),
        new RaisedButton(
          onPressed: _sendForm,
          child: new Text('Enviar'),
        ),
        RaisedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
          child: Text('Home'),
        )
      ],
    );
  }

  String _validarNome(String value) {
    String patttern = r'(^[a-zA-Z ]*$)';
    RegExp regExp = new RegExp(patttern);
    if (value.length == 0) {
      return "Informe o nome";
    } else if (!regExp.hasMatch(value)) {
      return "O nome deve conter caracteres de a-z ou A-Z";
    }
    return null;
  }

  String _validarIdade(String value) {
    String patttern = r'(^[0-9]*$)';
    RegExp regExp = new RegExp(patttern);
    if (value.length == 0) {
      return "Informe a Idade";
    } else if(value.length != 2){
      return "A idade possui apenas 2 caracteres";
    }else if (!regExp.hasMatch(value)) {
      return "A idade so deve conter dígitos";
    }
    return null;
  }



  _sendForm() {
    if (_key.currentState.validate()) {
      // Sem erros na validação
      _key.currentState.save();
      print("Nome $nome");
      print("Idade $idade");
    } else {
      // erro de validação
      setState(() {
        _validate = true;
      });
    }
  }
}