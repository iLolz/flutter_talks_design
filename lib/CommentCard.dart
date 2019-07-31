import 'package:flutter/material.dart';

class CommentCard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CommentCardState();
  }
}

class _CommentCardState extends State < StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          title: Text("Autor"),
          subtitle: Text("Amazing text guy you areth da n;fa d fkna ;ad nfa dlna; ldnfa lfns; dfnasd ;nfa lknas"),
        ),
      ),
    );
  }
}