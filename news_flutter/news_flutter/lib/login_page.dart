import 'package:flutter/material.dart';

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
      padding: const EdgeInsets.only(top: 20, bottom: 50, right: 0, left: 0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              child: Column(
                children: [
                  SizedBox(height: 20),
                  SizedBox(
                    height: MediaQuery.of(context).size.height,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 50,
                                child: Image.network(
                                    'https://store-images.s-microsoft.com/image/apps.38986.9007199266245737.4ac20127-5f19-4331-ac09-d2ce324e483a.6ce1617b-b233-4789-ad55-712caf23cfb3'),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                'BULLET NEWS',
                                style: TextStyle(
                                    fontSize: 50, fontWeight: FontWeight.w100),
                              ),
                            ],
                          ),
                          SizedBox(height: 15),
                          Text(
                            'Tudo em um só lugar & personalizado para você.',
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            'Notícias de hoje de todo o Brasil.',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(height: 150),
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
                          SizedBox(height: 10),
                          ButtonTheme(
                            height: 60.0,
                            child: RaisedButton(
                              color: Colors.white,
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
                              child: Text(
                                'Começe a ler',
                                style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold),
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
