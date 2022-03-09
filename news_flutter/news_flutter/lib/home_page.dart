import 'package:flutter/material.dart';

import 'app_controller.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.network(
                    'https://avatars.githubusercontent.com/u/96364591?v=4'),
              ),
              accountName: Text('Gustavo Oliveira'),
              accountEmail: Text('gustavo@etec.com'),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Inicio'),
              subtitle: Text('O começo de tudo'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/home');
              },
            ),
            ListTile(
              leading: Icon(Icons.attach_money),
              title: Text('Economia'),
              subtitle: Text('Bolsa ou Criptmoedas'),
              onTap: () {
                //Navigator.of(context).pushReplacementNamed('/');
                print('money');
              },
            ),
            ListTile(
              leading: Icon(Icons.code),
              title: Text('Tecnologias '),
              subtitle: Text('Tecnologias inovadoras'),
              onTap: () {
                //Navigator.of(context).pushReplacementNamed('/');
                print('Tech');
              },
            ),
            ListTile(
              leading: Icon(Icons.games),
              title: Text('Jogos'),
              subtitle: Text('Mundo dos jogos'),
              onTap: () {
                // Navigator.of(context).pushReplacementNamed('/');
                print('Games');
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Logout'),
              subtitle: Text('Sair da sua conta'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
            ),
            Text('Mudar Thema'),
            CustomSwith(),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('News Flutter'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 300,
              color: Colors.blue,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(height: 100, width: 100, color: Colors.purple),
                  Container(
                      height: 100, width: 100, color: Colors.purpleAccent),
                  Container(
                      height: 100, width: 100, color: Colors.deepPurpleAccent),
                ])
          ],
        ),
      ),
    );
  }
}

class CustomSwith extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDartTheme,
      onChanged: (value) {
        AppController.instance.changeTheme();
      },
    );
  }
}
