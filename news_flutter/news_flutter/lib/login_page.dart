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
    return Padding(
      padding: const EdgeInsets.only(top: 50, bottom: 50, right: 0, left: 0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 50,
                                child: Icon(
                                  Icons.timer_outlined,
                                  color: Colors.indigo,
                                  size: 50,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                AppWidget.title.first + " ",
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                AppWidget.title.last,
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.w100),
                              ),
                            ],
                          ),
                          SizedBox(height: 15),
                          Text(
                            'Notícias para se ler em 30 segundos.',
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            'De todo o mundo para você.',
                            style: TextStyle(fontSize: 18),
                          ),
                          SizedBox(height: 20),
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
                                if (userLogin == 'Gustavo' &&
                                    passwordLogin == "123") {
                                  Navigator.of(context)
                                      .pushReplacementNamed('/home');
                                } else {
                                  Navigator.of(context)
                                      .pushReplacementNamed('/');
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
                                          fontWeight: FontWeight.w100),
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Image.network(
                  'https://1.bp.blogspot.com/-02BZ3kdt-No/XXR8cgm1FHI/AAAAAAAAB7k/CtrMdhE8Lyg7irDz4cVw-kPyFFj-0crIwCLcBGAs/s1600/Color%2Bbars.jpg',
                  fit: BoxFit.cover)),
          Container(
            color: Colors.black.withOpacity(0.3),
          ),
          initialBody(),
        ],
      ),
    );
  }
}
