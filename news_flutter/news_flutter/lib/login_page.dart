import 'package:flutter/material.dart';
import 'package:news_flutter/app_widget.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String userLogin = '';
  String passwordLogin = '';
  bool _isObscure = true;

  Widget initialBody() {
    return Center(
      child: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 0, bottom: 10, right: 10, left: 10),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(50),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        AppWidget.title[0],
                        style: TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.w100,
                          color: Colors.indigo,
                        ),
                      ),
                      SizedBox(
                        child: Icon(
                          Icons.timer_outlined,
                          color: Colors.indigo,
                          size: 50,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            AppWidget.title[1],
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                          Text(
                            AppWidget.title[2],
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Notícias em 30 segundos.',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    'Para quem não tem tempo de ler notícias.',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 50),
                  TextField(
                    onChanged: (text) {
                      userLogin = text;
                    },
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      labelText: 'Usuario',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 12),
                  TextField(
                    onChanged: (text) {
                      passwordLogin = text;
                    },
                    obscureText: _isObscure,
                    decoration: InputDecoration(
                      labelText: 'Senha',
                      border: OutlineInputBorder(),
                      suffixIcon: IconButton(
                        icon: Icon(_isObscure
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () {
                          setState(
                            () {
                              _isObscure = !_isObscure;
                            },
                          );
                        },
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    margin: EdgeInsets.only(top: 20),
                    child: ElevatedButton(
                      onPressed: () {
                        if (userLogin == 'admin' && passwordLogin == "123") {
                          Navigator.of(context).pushReplacementNamed('/home');
                        } else {
                          Navigator.of(context).pushReplacementNamed('/');
                        }
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.book),
                          Padding(
                            padding: EdgeInsets.all(16),
                            child: Text(
                              'Começe a ler',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w100,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Color.fromARGB(255, 185, 208, 220).withOpacity(0.3),
          ),
          initialBody(),
        ],
      ),
    );
  }
}
