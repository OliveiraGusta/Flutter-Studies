import 'package:flutter/material.dart';
import 'package:news_flutter/home_page.dart';
import 'app_controller.dart';
import 'app_widget.dart';

class GamesPage extends StatefulWidget {
  @override
  State<GamesPage> createState() {
    return _GamesPageState();
  }
}

class _GamesPageState extends State<GamesPage> {
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
              Navigator.of(context).pushNamed('/games');
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
    );
  }

  Widget gamesPageBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 300,
                      width: MediaQuery.of(context).size.width,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(45),
                        child: Image.network(
                            'https://img.olhardigital.com.br/wp-content/uploads/2022/03/Minecraft-1024x532.jpg'),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        Text(
                          "Programador lidera time que irá recriar cidade inteira de Nova Iorque dentro do Minecraft",
                          //  style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "o valor é o dobro do acordo atual. A EA não deve aceitar os novos termos e poderá mudar o nome do jogo para “EA Sports F.C.”. O primeiro jogo da série, “FIFA International Soccer”, foi lançado há quase 30 anos, em 1993. As informações são do The New York Times.",
                          // style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 300,
                      width: MediaQuery.of(context).size.width,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(45),
                        child: Image.network(
                            'https://fs-prod-cdn.nintendo-europe.com/media/images/10_share_images/games_15/nintendo_switch_4/H2x1_NSwitch_SuperMario3DWorldAndBowsersFury_image1600w.jpg'),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        Text(
                          "Nintendo domina Top 20 de jogos mais vendidos nos EUA",
                          //  style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Apenas um jogo, “NBA 2K22”, para o PlayStation 4, entrou na lista (na vigésima posição). O jogo mais vendido do ano, segundo a compilação da Amazon, foi o “Super Mario 3D World + Bowser’s Fury”. As informações são do site DualShockers.",
                          // style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 300,
                      width: MediaQuery.of(context).size.width,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(45),
                        child: Image.network(
                            'https://cdn.ome.lt/xKT3NZ8b_pN4wsdqpdFj2ocDDts=/1200x630/smart/extras/conteudos/FIFA_22.png'),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        Text(
                          "FIFA quer 1 bilhão de dólares para manter marca da organização na série de jogos de futebol da Electronic Arts",
                          //  style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "o valor é o dobro do acordo atual. A EA não deve aceitar os novos termos e poderá mudar o nome do jogo para “EA Sports F.C.”. O primeiro jogo da série, “FIFA International Soccer”, foi lançado há quase 30 anos, em 1993. As informações são do The New York Times.",
                          // style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
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
        title: Text(AppWidget.title + " Games"),
        centerTitle: true,
      ),
      body: gamesPageBody(),
    );
  }
}
