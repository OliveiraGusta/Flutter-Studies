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
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Container(
              width: double.infinity,
              height: 450,
              color: Colors.green,
              /* Informações 
                Biometria triplica no GovBR 
                Número de cadastros com biometria quase triplica no sistema GovBR
                o motivo é a exigência de assinaturas avançadas para acesso a serviços públicos pela internet. Atualmente já existem 15 milhões de cadastros com nível de segurança “Ouro”, 11,8 milhões no nível “Prata” e 99,2 milhões “Bronze”. A identidade digital de nível Ouro requer biometria facial, a Prata se refere a cadastros acessados com conta e senha de bancos integrados à plataforma e Bronze é o cadastro básico de login e senha. As informações são do site Convergência Digital. */
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
      endDrawer: Container(
        child: Drawer(
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
                  Navigator.of(context).pushReplacementNamed('/games');
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
      ),
      appBar: AppBar(
        title: Text('Bullet News'),
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
