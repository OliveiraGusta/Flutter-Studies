import 'dart:js';

import 'package:aula_09_03/principal.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyHome());
}

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.purple),
      home: NewMyHome(),
    );
  }
}

class NewMyHome extends StatefulWidget {
  const NewMyHome({Key? key}) : super(key: key);

  @override
  State<NewMyHome> createState() => _NewMyHomeState();
}

class _NewMyHomeState extends State<NewMyHome> {
  String email = '';
  String senha = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Novo projeto'),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextField(
                  onChanged: (text){
                    email = text;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox( height: 10),
                TextField(
                  onChanged: (text){
                    senha = text;
                  },
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    labelText: 'Senha',
                    border: OutlineInputBorder(),
                  ),
                ),

                 const SizedBox(height: 10),

                 ButtonTheme(
                   minWidth: double.infinity,
                   height: 60.0,
                   child:
                  RaisedButton(
                     color: Colors.blueAccent,
                            onPressed: () {
                              if (email == 'gustavo@etec.com' &&
                                  senha == '123g') {
                                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                                    builder: (context)=> Principal() ));
                                  
                              } else 
                                print('invalido');
                              },
                            
                            child: Text('Entrar', style: TextStyle(color: Colors.white, fontSize: 20.0) ,),
                   ),
                 ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
