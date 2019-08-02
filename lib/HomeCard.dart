import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'DiscussionPage.dart';

class HomeCard extends StatefulWidget {
  final title;
  final autor;
  final text;

  HomeCard({this.title, this.autor, this.text,});

  @override
  State<StatefulWidget> createState() {
    return _HomeCardState(title, autor, text);
  }
}

class _HomeCardState extends State<StatefulWidget> {
  final title;
  final autor;
  final text;


  _HomeCardState(this.title, this.autor, this.text);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text(
              "$title",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text("Autor: $autor"),
            trailing: IconButton(
                icon: Icon(
                  Icons.share,
                ),
                onPressed: () {
                  _launchUrl();
                }),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("${text.substring(0,100)}..."),
          ),
        ],
      ),
    );
  }

  _launchUrl() async {
    const url = 'https://flutter.dev';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
