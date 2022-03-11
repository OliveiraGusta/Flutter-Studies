import 'package:flutter/material.dart';

import 'app_controller.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  Widget homePageBody() {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: 400,
                color: Colors.green,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(height: 250, width: 250, color: Colors.blue),
                    Container(height: 250, width: 250, color: Colors.redAccent),
                  ],
                ),
                Container(
                    height: 400,
                    width: double.infinity,
                    color: Colors.lightBlue),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(height: 250, width: 250, color: Colors.blue),
                    Container(height: 250, width: 250, color: Colors.redAccent),
                  ],
                ),
                Container(
                    height: 400,
                    width: double.infinity,
                    color: Colors.lightBlue),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(height: 250, width: 250, color: Colors.blue),
                    Container(height: 250, width: 250, color: Colors.redAccent),
                  ],
                ),
                Container(
                    height: 400,
                    width: double.infinity,
                    color: Colors.lightBlue),
                Text(
                  'By Gustavo Oliveira',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

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
                print('tech');
              },
            ),
            ListTile(
              leading: Icon(Icons.games),
              title: Text('Jogos'),
              subtitle: Text('Mundo dos jogos'),
              onTap: () {
                // Navigator.of(context).pushReplacementNamed('/');
                print('games');
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
            Text('Mudar Tema'),
            CustomSwith(),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('ETEC NEWS'),
      ),
      body: homePageBody(),
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
