import 'package:flutter/material.dart';
import 'package:flutter_talks_design/CommentCard.dart';
import 'package:flutter_talks_design/HomeCard.dart';
import 'Estruturas/Estruturas.dart';

class DiscussionPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DiscussionPageState();
  }
}

class _DiscussionPageState extends State<StatefulWidget> {
  List<Comentario> comentarios = List<Comentario>();

  Comentario comentario = Comentario();
  String texto;
  String autor;
  String title;

  inicia() {
    texto =
        "Quando estava no 6º período de Engenharia de Computação um amigo me indicou que aprendesse Flutter, o Framework ainda não havia sido apresentado ao mercado oficialmente, totalmente movido pela comunidade aquela altura! Nessa época só havia trabalhado com desenvolvimentos nas atividades académicas, apenas com C++ e sem Front-end, tudo no prompt, o que confesso me deu pouco background para desenvolver um aplicação, mesmo sendo entusiasta de dispositivos móveis, esse foi meu inicio como desenvolvedor mobile, nesse texto vou contar como foi meu aprendizado do Flutter, esse framework maravilhoso da Google!";
    autor = "Alencar A. Moreira";
    title = "Iniciando com Flutter";

    comentario.autor = "Gabriel";
    comentario.texto = "Parabéns cara, continue sua caminhada!";

    for (int i = 0; i > 5; i++) {
      comentarios.add(comentario);
    }
  }

  TextEditingController _textEditingController = TextEditingController();

  List<Comentario> lista = List<Comentario>();
  @override
  void initState() {
    inicia();
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
                color: Colors.purpleAccent, fontWeight: FontWeight.w300),
          ),
          backgroundColor: Colors.white,
          elevation: 1.0,
          brightness: Brightness.light,
        ),
        body: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    HomeCard(
                      title: title,
                      autor: autor,
                      text: texto,
                    ),
                    Column(
                      children: comentarios
                          .map((item) => CommentCard(
                                comentario: item,
                              ))
                          .toList(),
                    ),
                  ],
                ),
              ),
            ),
            new Positioned(
              bottom: 0.0,
              left: 0.0,
              child: Container(
                decoration: BoxDecoration(color: Colors.white70),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: _textEditingController,
                    cursorColor: Colors.purpleAccent,
                    autocorrect: true,
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
                            onPressed: () {
                              Comentario comentario1 = Comentario();

                              comentario1.autor = "Gabriel";
                              comentario1.texto =
                                  _textEditingController.text.toString();

                              comentarios.add(comentario1);
                              setState(() {});
                            })),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
