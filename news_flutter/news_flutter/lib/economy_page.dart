import 'package:flutter/material.dart';
import 'package:news_flutter/home_page.dart';
import 'package:url_launcher/url_launcher.dart';
import 'app_controller.dart';
import 'app_widget.dart';

class EconomyPage extends StatefulWidget {
  @override
  State<EconomyPage> createState() {
    return _EconomyPageState();
  }
}

class _EconomyPageState extends State<EconomyPage> {
  void _launcherLink(String url) async {
    if (await canLaunch(url)) {
      await launch(url, forceWebView: false, forceSafariVC: false);
    } else {
      print('O link $url não pode ser executado');
    }
  }

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

  Widget economyPageBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          //1º NOTICA
         
         
          //FIM 1 notiicia
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
            Text(AppWidget.title[1] + " ECONOMY " + AppWidget.title[2]),
          ],
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
            color: Color.fromARGB(255, 185, 208, 220).withOpacity(0.3),
          ),
          economyPageBody(),
        ],
      ),
    );
  }
}
