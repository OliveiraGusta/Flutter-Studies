import 'package:flutter/material.dart';

class InitialPage extends StatefulWidget {
  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  String name = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
                  // child: Image.asset(''),
                ),
                Container(height: 10),
                TextField(
                  onChanged: (text) {
                    name = text;
                  },
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    labelText: 'name',
                    border: OutlineInputBorder(),
                  ),
                ),
                Container(height: 15),
                RaisedButton(
                    onPressed: () {
                      if (name == 'Gustavo') {
                        Navigator.of(context).pushReplacementNamed('/home');
                      } else {
                        Navigator.of(context).pushReplacementNamed('/');
                      }
                    },
                    child: Text('Começe a ler'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
