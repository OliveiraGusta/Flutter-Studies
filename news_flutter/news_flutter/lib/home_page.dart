import 'package:flutter/material.dart';

import 'app_controller.dart';
import 'app_widget.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  Widget drawer() {
    return Drawer(
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
              Navigator.of(context).pushReplacementNamed('/economy');
            },
          ),
          ListTile(
            leading: Icon(Icons.code),
            title: Text('Tecnologias '),
            subtitle: Text('Tecnologias inovadoras'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/technology');
            },
          ),
          ListTile(
            leading: Icon(Icons.games),
            title: Text('Jogos'),
            subtitle: Text('Mundo dos jogos'),
            onTap: () {
              Navigator.of(context).pushNamed('/games');
            },
          ),
          ListTile(
            leading: Icon(Icons.light_mode_outlined),
            title: Text('Mudar Tema'),
            subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [CustomSwith()]),
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            subtitle: Text('Sair da sua conta'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
        ],
      ),
    );
  }

  Widget homePageBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Container(
              width: double.infinity,
              height: 450,
              color: Colors.green,
            ),
          ),
          Row(
            children: [
              Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width / 2,
                  color: Colors.blue),
              Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width / 2,
                  color: Colors.red),
            ],
          ),
          Container(height: 300, width: double.infinity, color: Colors.black),
          Row(
            children: [
              Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width / 2,
                  color: Colors.blue),
              Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width / 2,
                  color: Colors.red),
            ],
          ),
          Container(height: 300, width: double.infinity, color: Colors.black),
          Row(
            children: [
              Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width / 2,
                  color: Colors.blue),
              Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width / 2,
                  color: Colors.red),
            ],
          ),
          Container(height: 300, width: double.infinity, color: Colors.black),
          Text(
            'By Gustavo Oliveira',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: drawer(),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppWidget.title[0],
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            Icon(
              Icons.timer_outlined,
              size: 30,
            ),
            SizedBox(
              width: 5,
            ),
            Text(AppWidget.title[1] + " " + AppWidget.title[2]),
          ],
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
            color: Color.fromARGB(255, 185, 208, 220).withOpacity(0.3),
          ),
          homePageBody(),
        ],
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
