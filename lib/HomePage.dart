import 'package:flutter/material.dart';
import 'package:flutter_talks_design/HomeCard.dart';
import 'package:flutter_talks_design/LoginScreen.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<StatefulWidget> {
  String texto =
      "Quando estava no 6º período de Engenharia de Computação um amigo me indicou que aprendesse Flutter, o Framework ainda não havia sido apresentado ao mercado oficialmente, totalmente movido pela comunidade aquela altura! Nessa época só havia trabalhado com desenvolvimentos nas atividades académicas, apenas com C++ e sem Front-end, tudo no prompt, o que confesso me deu pouco background para desenvolver um aplicação, mesmo sendo entusiasta de dispositivos móveis, esse foi meu inicio como desenvolvedor mobile, nesse texto vou contar como foi meu aprendizado do Flutter, esse framework maravilhoso da Google!";
  String autor = "Alencar A. Moreira";
  String title = "Iniciando com Flutter";
  String code = "0293";

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
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(color: Colors.white70),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              HomeCard(
                title: title,
                autor: autor,
                text: texto,
                link: code,
                home: true,
              ),
              HomeCard(
                  title: title,
                  autor: autor,
                  text: texto,
                  link: code,
                  home: true),
              HomeCard(
                title: title,
                autor: autor,
                text: texto,
                link: code,
                home: true,
              ),
              HomeCard(
                title: title,
                autor: autor,
                text: texto,
                link: code,
                home: true,
              ),
              HomeCard(
                title: title,
                autor: autor,
                text: texto,
                link: code,
                home: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
