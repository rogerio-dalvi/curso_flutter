import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class PerguntaApp extends StatelessWidget {
  void responder() {
    print("Pergunta respondida!");
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
            Text(perguntas[0]),
            RaisedButton(
              child: Text("Resposta 1"),
              onPressed: responder,
            ),
            RaisedButton(
              child: Text("Resposta 2"),
              onPressed: funcaoQueRetornaUmaOutraFuncao(),
            ),
            RaisedButton(
              child: Text("Resposta 3"),
              onPressed: () {
                print("Resposta 3 foi selecionada");
              },
            ),
            RaisedButton(
              child: Text("Resposta 4"),
              onPressed: () => print("Resposta 4 foi selecionada"),
            ),
          ],
        ),
      ),
    );
  }
}
