import 'package:flutter/material.dart';
import 'package:news_flutter/home_page.dart';
import 'package:url_launcher/url_launcher.dart';
import 'app_controller.dart';
import 'app_widget.dart';

class GamesPage extends StatefulWidget {
  @override
  State<GamesPage> createState() {
    return _GamesPageState();
  }
}

class _GamesPageState extends State<GamesPage> {
  Future<void> _launcherLink(String url) async {
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
          //1º NOTICA
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Card(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 20, right: 10, bottom: 5, left: 10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.network(
                            'https://img.olhardigital.com.br/wp-content/uploads/2022/03/Minecraft-1024x532.jpg'),
                      ),
                    ),
                    SizedBox(height: 2),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Text(
                            "Programador lidera time que irá recriar cidade inteira de Nova Iorque dentro do Minecraft",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "O valor é o dobro do acordo atual. A EA não deve aceitar os novos termos e poderá mudar o nome do jogo para “EA Sports F.C.”. O primeiro jogo da série, “FIFA International Soccer”, foi lançado há quase 30 anos, em 1993. As informações são do The New York Times.",
                            textAlign: TextAlign.center,
                            // style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomCenter,
                      margin: EdgeInsets.only(
                          top: 20, right: 10, left: 10, bottom: 25),
                      child: ElevatedButton(
                        onPressed: () => _launcherLink(
                            "https://www.google.com/search?q=Programador+lidera+time+que+irá+recriar+cidade+inteira+de+Nova+Iorque+dentro+do+Minecraft"),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.search_outlined),
                            Padding(
                              padding: EdgeInsets.all(16),
                              child: Text(
                                'Pesquisar Sobre',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w100),
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
          ),
          //FIM 1 NOTICA
/*
          //2º noticia
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
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        Text(
                          "Nintendo domina Top 20 de jogos mais vendidos nos EUA",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Apenas um jogo, “NBA 2K22”, para o PlayStation 4, entrou na lista (na vigésima posição). O jogo mais vendido do ano, segundo a compilação da Amazon, foi o “Super Mario 3D World + Bowser’s Fury”. As informações são do site DualShockers.",
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    margin: EdgeInsets.only(
                        top: 20, right: 10, left: 10, bottom: 20),
                    child: ElevatedButton(
                      onPressed: () {
                        //ABRIR LINK DE PESQUISA NO GOOGLE
                        print('PESQUISA 2');
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.search_outlined),
                          Padding(
                            padding: EdgeInsets.all(16),
                            child: Text(
                              'Pesquisar Sobre',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w100),
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
          //FIM 2º noticia

          //3º noticia
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
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        Text(
                          "FIFA quer 1 bilhão de dólares para manter marca da organização na série de jogos de futebol da Electronic Arts",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "O valor é o dobro do acordo atual. A EA não deve aceitar os novos termos e poderá mudar o nome do jogo para “EA Sports F.C.”. O primeiro jogo da série, “FIFA International Soccer”, foi lançado há quase 30 anos, em 1993. As informações são do The New York Times.",
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    margin: EdgeInsets.only(
                        top: 20, right: 10, left: 10, bottom: 20),
                    child: ElevatedButton(
                      onPressed: () {
                        //ABRIR LINK DE PESQUISA NO GOOGLE

                        print('PESQUISA 3');
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.search_outlined),
                          Padding(
                            padding: EdgeInsets.all(16),
                            child: Text(
                              'Pesquisar Sobre',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w100),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),*/

          //fim 3º noticia
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: drawer(),
      appBar: AppBar(
        title: Text(AppWidget.title.first + " Gaming " + AppWidget.title.last),
        centerTitle: true,
      ),
      body: gamesPageBody(),
    );
  }
}
