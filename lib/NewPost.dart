import 'package:flutter/material.dart';
import 'package:flutter_talks_design/HomePage.dart';
import 'Estruturas/Estruturas.dart';

class NewPost extends StatefulWidget {
  final List<Texto> list = List<Texto>();

  NewPost(List<Texto> list);

  @override
  State<StatefulWidget> createState() {
    return _NewPostState(list);
  }
}

class _NewPostState extends State<StatefulWidget> {
  TextEditingController _titleEditingController = TextEditingController();
  TextEditingController _textEditingController = TextEditingController();

  final List<Texto> list = List<Texto>();

  _NewPostState(List<Texto> list);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.save,
        ),
        backgroundColor: Colors.purple,
        onPressed: () {
          Texto texto = Texto();

          texto.titulo = _titleEditingController.text.toString();
          texto.texto = _textEditingController.text.toString();
          texto.autor = "Gabriel";

          list.add(texto);

          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (BuildContext context) => HomePage()),
            ModalRoute.withName('/'),
          );
        },
      ),
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
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelStyle: TextStyle(color: Colors.purpleAccent),
                  labelText: "Titulo",
                  fillColor: Colors.purpleAccent,
                  focusColor: Colors.purpleAccent,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      borderSide: BorderSide(color: Colors.purpleAccent)),
                ),
                keyboardType: TextInputType.text,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Autor: Yago Massiah"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                minLines: null,
                maxLines: null,
                decoration: InputDecoration(
                  labelText: "Texto",
                  labelStyle: TextStyle(color: Colors.purpleAccent),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      borderSide: BorderSide(color: Colors.purpleAccent)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
