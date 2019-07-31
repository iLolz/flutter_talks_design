import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'DiscussionPage.dart';

class HomeCard extends StatefulWidget {
  final title;
  final autor;
  final text;
  final link;
  final home;

  HomeCard({this.title, this.autor, this.text, this.link, this.home});

  @override
  State<StatefulWidget> createState() {
    return _HomeCardState(title, autor, text, link, home);
  }
}

class _HomeCardState extends State<StatefulWidget> {
  final title;
  final autor;
  final text;
  final link;
  final home;

  _HomeCardState(this.title, this.autor, this.text, this.link, this.home);

  String resumo;
  @override
  void initState() {
    home ? resumo = text.toString().substring(0, 100) : resumo = text;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.all(0.0),
      onPressed: () {
        home?
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => DiscussionPage())) : true;
      },
      child: Card(
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
              child: Text("$resumo..."),
            ),
          ],
        ),
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
