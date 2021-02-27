import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });

    print("Pergunta selecionada (indice): $_perguntaSelecionada");
  }

  void Function() funcaoQueRetornaUmaOutraFuncao() {
    return () {
      print("Pergunta respondida #02!");
    };
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      "Qual é a sua cor favorita?",
      "Qual é o seu animal favorito?"
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Perguntas")),
        body: Column(
          children: <Widget>[
            Text(perguntas[_perguntaSelecionada]),
            RaisedButton(
              child: Text("Resposta 1"),
              onPressed: _responder,
            ),
            RaisedButton(
              child: Text("Resposta 2"),
              onPressed: _responder,
            ),
            RaisedButton(
              child: Text("Resposta 3"),
              onPressed: _responder,
            ),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() {
    return new _PerguntaAppState();
  }
}
