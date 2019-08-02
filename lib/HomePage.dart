import 'package:flutter/material.dart';
import 'package:flutter_talks_design/DiscussionPage.dart';
import 'package:flutter_talks_design/Estruturas/Estruturas.dart';
import 'package:flutter_talks_design/HomeCard.dart';
import 'package:flutter_talks_design/LoginScreen.dart';
import 'package:flutter_talks_design/NewPost.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<StatefulWidget> {
  final List<Texto> list = List<Texto>();

  populaList() {
    Texto texto = Texto();
    texto.autor = "Alencar A. Moreira";
    texto.titulo = "Iniciando com Flutter";
    texto.texto = "Quando estava no 6º período de Engenharia de Computação um amigo me indicou que aprendesse Flutter, o Framework ainda não havia sido apresentado ao mercado oficialmente, totalmente movido pela comunidade aquela altura! Nessa época só havia trabalhado com desenvolvimentos nas atividades académicas, apenas com C++ e sem Front-end, tudo no prompt, o que confesso me deu pouco background para desenvolver um aplicação, mesmo sendo entusiasta de dispositivos móveis, esse foi meu inicio como desenvolvedor mobile, nesse texto vou contar como foi meu aprendizado do Flutter, esse framework maravilhoso da Google!";
    for (int i = 0; i < 1; i++) {
      list.add(texto);
    }
  }

  @override
  void initState() {
    populaList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "GrapeForum",
            style: TextStyle(
                color: Colors.purpleAccent, fontWeight: FontWeight.w200),
          ),
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.exit_to_app,
                  color: Colors.purpleAccent,
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => LoginScreen()));
                })
          ],
          backgroundColor: Colors.white,
          elevation: 1.0,
          brightness: Brightness.light,
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: Colors.purple,
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => NewPost(list)));
          },
        ),
        body: ListView.builder(
          itemCount: list.length,
          itemBuilder: (BuildContext context, int index) {
            return FlatButton(
              child: HomeCard(
                text: list[index].texto,
                autor: list[index].autor,
                title: list[index].titulo,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => DiscussionPage()));
              },
            );
          },
        ));
  }
}
