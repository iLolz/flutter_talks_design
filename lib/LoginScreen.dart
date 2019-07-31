import 'package:flutter/material.dart';
import 'package:flutter_talks_design/HomePage.dart';
import 'package:flutter_talks_design/newAccount.dart';
import 'package:flutter_talks_design/recoveryAccount.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginScreenState();
  }
}

class _LoginScreenState extends State<StatefulWidget> {
  TextEditingController _EmailEditingController = TextEditingController();
  TextEditingController _PasswordEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(
              children: <Widget>[
                Text(
                  "Grape       ",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.purpleAccent,
                      fontWeight: FontWeight.w100,
                      fontSize: MediaQuery.of(context).size.width / 8),
                ),
                Text(
                  "       Fórum",
                  style: TextStyle(
                      color: Colors.purpleAccent,
                      fontWeight: FontWeight.w100,
                      fontSize: MediaQuery.of(context).size.width / 10),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: _EmailEditingController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: "E-mail",
                      focusColor: Colors.purpleAccent,
                      filled: false,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide:
                            BorderSide(color: Colors.purpleAccent, width: 1.0),
                      ),
                      hintText: "E-mail",
                      fillColor: Colors.purpleAccent,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: _PasswordEditingController,
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: "Senha",
                      focusColor: Colors.purpleAccent,
                      hoverColor: Colors.purpleAccent,
                      filled: false,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide(color: Colors.purpleAccent),
                      ),
                      hintText: "Senha",
                      fillColor: Colors.purpleAccent,
                    ),
                  ),
                ),
                FlatButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => HomePage()));
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      color: Colors.green,
                      child: Container(
                        decoration: BoxDecoration(),
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Entrar",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    )),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => NewAccount()));
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    color: Colors.blue,
                    child: Container(
                      decoration: BoxDecoration(),
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Cadastrar",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                RecoveryAccount()));
                  },
                  child: Text(
                    "Recuperar conta",
                    style: TextStyle(
                        color: Colors.red,
                        decoration: TextDecoration.underline),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
