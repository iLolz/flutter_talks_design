import 'package:flutter/material.dart';
import 'package:flutter_talks_design/Estruturas/Estruturas.dart';

class CommentCard extends StatefulWidget {
  final Comentario comentario;

  const CommentCard({Key key, this.comentario}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _CommentCardState(comentario);
  }
}

class _CommentCardState extends State<StatefulWidget> {
  final Comentario comentario;

  _CommentCardState(this.comentario);
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          title: Text("${comentario.texto}"),
          subtitle: Text("${comentario.autor}"),
        ),
      ),
    );
  }
}
