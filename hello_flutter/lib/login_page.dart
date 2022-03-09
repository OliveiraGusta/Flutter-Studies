import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_flutter/home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  Widget _body() {
    return Column(
      children: [
        SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 200,
                    height: 300,
                    child: Image.asset('../assets/images/logo.png'),
                  ),
                  Container(height: 5),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, top: 15, bottom: 10),
                      child: Column(
                        children: [
                          TextField(
                            onChanged: (text) {
                              email = text;
                            },
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              labelText: 'Email',
                              border: OutlineInputBorder(),
                            ),
                          ),
                          Container(height: 10),
                          TextField(
                            onChanged: (text) {
                              password = text;
                            },
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: 'Password',
                              border: OutlineInputBorder(),
                            ),
                          ),
                          Container(height: 15),
                          RaisedButton(
                            color: Colors.blueAccent,
                            onPressed: () {
                              if (email == 'gustavo@etec.com' &&
                                  password == '123g') {
                                Navigator.of(context)
                                    .pushReplacementNamed('/home');
                              } else {
                                print('login invalido');
                              }
                            },
                            child: Container(
                              width: double.infinity,
                              child: Text(
                                'Entrar',
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Image.asset('../assets/images/wallpaper-login.jpg',
              fit: BoxFit.cover)),
      Container(
        color: Colors.black.withOpacity(0.3),
      ),
      _body(),
    ]));
  }
}
