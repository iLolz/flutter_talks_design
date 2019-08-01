import 'package:flutter/material.dart';

class NewPost extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _NewPostState();
  }
}

class _NewPostState extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.save,),
        backgroundColor: Colors.purple,
        
        onPressed: () {},
      ),
      
      appBar: AppBar(
        centerTitle: true,
        leading: BackButton(color: Colors.purpleAccent,),
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
