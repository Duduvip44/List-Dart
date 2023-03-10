import 'dart:html';

import 'package:flutter/material.dart';
import 'aluno.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Listinha furiosa'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  Widget buildAlunoCard(Aluno aluno) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.network(aluno.urlImage),
          Text(aluno.nome,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                height:
                    2, //line height 200%, 1= 100%, were 0.9 = 90% of actual line height
                color: Colors.black, //font color
                backgroundColor: Colors.black12, //background color
              )),
          Text(
            aluno.descricao,
            style: TextStyle(
              fontSize: 18,
              fontStyle: FontStyle.italic, // Text style
              letterSpacing: 5, //letter spacing
              decoration: TextDecoration.underline,
              decorationColor: //make underline
                  Colors.black, //text decoration 'underline' color
              decorationThickness: 1.5,
              //decoration 'underline' thickness
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text(title),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: Aluno.exemplos.length,
          itemBuilder: (BuildContext context, int index) {
            return buildAlunoCard(Aluno.exemplos[index]);
            return Text(Aluno.exemplos[index].nome);
            //NEGRITO O NOME, AUMENTAR O TAMANHO E MUDAR A FONTE
            //DESCRI????O DE CADA BLOCO.
          },
        ),
      ),
    );
  }
}
