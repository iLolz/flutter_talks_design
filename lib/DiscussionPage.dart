import 'package:flutter/material.dart';
import 'package:flutter_talks_design/CommentCard.dart';
import 'package:flutter_talks_design/HomeCard.dart';

class DiscussionPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DiscussionPageState();
  }
}

class _DiscussionPageState extends State<StatefulWidget> {
  String texto =
      "Quando estava no 6º período de Engenharia de Computação um amigo me indicou que aprendesse Flutter, o Framework ainda não havia sido apresentado ao mercado oficialmente, totalmente movido pela comunidade aquela altura! Nessa época só havia trabalhado com desenvolvimentos nas atividades académicas, apenas com C++ e sem Front-end, tudo no prompt, o que confesso me deu pouco background para desenvolver um aplicação, mesmo sendo entusiasta de dispositivos móveis, esse foi meu inicio como desenvolvedor mobile, nesse texto vou contar como foi meu aprendizado do Flutter, esse framework maravilhoso da Google!";
  String autor = "Alencar A. Moreira";
  String title = "Iniciando com Flutter";
  String code = "code";

  TextEditingController _textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: BackButton(
            color: Colors.purpleAccent,
          ),
          title: Text(
            "GrapeForum",
            style: TextStyle(
                color: Colors.purpleAccent, fontWeight: FontWeight.w200),
          ),
          backgroundColor: Colors.white,
          elevation: 1.0,
          brightness: Brightness.light,
        ),
        bottomNavigationBar: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.1,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _textEditingController,
              cursorColor: Colors.purpleAccent,
              autocorrect: true,
              autofocus: true,
              decoration: InputDecoration(
                focusColor: Colors.purpleAccent,
                  fillColor: Colors.white70,
                  filled: true,
                  hintText: "Comentar",
                  suffixIcon: IconButton(
                      icon: Icon(
                        Icons.send,
                        color: Colors.purpleAccent,
                      ),
                      onPressed: null)),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              HomeCard(
                  title: title,
                  autor: autor,
                  text: texto,
                  link: code,
                  home: false),
              CommentCard(),
              CommentCard(),
              CommentCard(),
              CommentCard(),
              CommentCard(),
              CommentCard(),
              CommentCard(),
              CommentCard(),
              CommentCard(),
              CommentCard(),
              CommentCard(),
              CommentCard(),
            ],
          ),
        ));
  }
}
