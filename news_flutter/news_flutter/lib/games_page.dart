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

  Widget gamesPageBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          //1º NOTICA
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child:
                  //Start Dialog
                  GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(40),
                                child: Image.network(
                                    'https://cdn.ome.lt/xKT3NZ8b_pN4wsdqpdFj2ocDDts=/1200x630/smart/extras/conteudos/FIFA_22.png'),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "FIFA quer 1 bilhão de dólares para manter marca da organização na série de jogos de futebol da Electronic Arts",
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        content: Text(
                          "O valor é o dobro do acordo atual. A EA não deve aceitar os novos termos e poderá mudar o nome do jogo para “EA Sports F.C.”. O primeiro jogo da série, “FIFA International Soccer”, foi lançado há quase 30 anos, em 1993. As informações são do The New York Times.",
                          textAlign: TextAlign.center,
                        ),
                      );
                    },
                  );
                },
                //End Dialog
                //Card
                child: Card(
                  elevation: 10,
                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 20, right: 10, bottom: 5, left: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: Image.network(
                              'https://cdn.ome.lt/xKT3NZ8b_pN4wsdqpdFj2ocDDts=/1200x630/smart/extras/conteudos/FIFA_22.png'),
                        ),
                      ),
                      SizedBox(height: 2),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Text(
                              "FIFA quer 1 bilhão de dólares para manter marca da organização na série de jogos de futebol da Electronic Arts",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
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
                            top: 20, right: 10, left: 10, bottom: 25),
                        child: ElevatedButton(
                          onPressed: () => _launcherLink(
                              "https://www.google.com.br/search?q=FIFA+quer+1+bilh%C3%A3o+de+d%C3%B3lares+para+manter+marca+da+organiza%C3%A7%C3%A3o+na+s%C3%A9rie+de+jogos+de+futebol+da+Electronic+Arts&source=hp&ei=rgMyYtjCKZDK1sQPncCpyAE&iflsig=AHkkrS4AAAAAYjIRvrA9X2S0HM0qHVeV8REYm1KKNiFu&ved=0ahUKEwjY0cDF-sr2AhUQpZUCHR1gChkQ4dUDCAc&uact=5&oq=FIFA+quer+1+bilh%C3%A3o+de+d%C3%B3lares+para+manter+marca+da+organiza%C3%A7%C3%A3o+na+s%C3%A9rie+de+jogos+de+futebol+da+Electronic+Arts"),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.search_outlined),
                              Padding(
                                padding: EdgeInsets.all(16),
                                child: Text(
                                  'Pesquisar Sobre',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w100),
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
          ),

          //FIM 1 notiicia

          //2º NOTICA
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child:
                  //Start Dialog
                  GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(40),
                                child: Image.network(
                                    'https://cdn.trendsbr.com.br/uploads/noticias/2021/12/19/1hk92gwqcjk3a.jpg'),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Conjunto de células cerebrais humanas aprendem a jogar Pong em laboratório mais rápido do que IAs",
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        content: Text(
                          "Os “minicérebros” são colocados em cima de uma matriz de microeletrodos que analisa sua atividade neural. Embora não consigam jogar tão bem quanto um ser humano, os minicérebros aprendem a controlar o jogo mais rápido do que sistemas de inteligência artificial. As informações são do site Futurism.",
                          textAlign: TextAlign.center,
                        ),
                      );
                    },
                  );
                },
                //End Dialog
                //Card
                child: Card(
                  elevation: 10,
                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 20, right: 10, bottom: 5, left: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: Image.network(
                              'https://cdn.trendsbr.com.br/uploads/noticias/2021/12/19/1hk92gwqcjk3a.jpg'),
                        ),
                      ),
                      SizedBox(height: 2),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Text(
                              "Conjunto de células cerebrais humanas aprendem a jogar Pong em laboratório mais rápido do que IAs",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Os “minicérebros” são colocados em cima de uma matriz de microeletrodos que analisa sua atividade neural. Embora não consigam jogar tão bem quanto um ser humano, os minicérebros aprendem a controlar o jogo mais rápido do que sistemas de inteligência artificial. As informações são do site Futurism.",
                              textAlign: TextAlign.center,
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
                              "https://www.google.com/search?q=Conjunto+de+c%C3%A9lulas+cerebrais+humanas+aprendem+a+jogar+Pong+em+laborat%C3%B3rio+mais+r%C3%A1pido+do+que+IAs&source=lmns&bih=627&biw=1325&client=opera-gx&hs=oDF&hl=pt-BR&sa=X&ved=2ahUKEwjkwIXygcv2AhUru5UCHfPsCiAQ_AUoAHoECAEQAA"),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.search_outlined),
                              Padding(
                                padding: EdgeInsets.all(16),
                                child: Text(
                                  'Pesquisar Sobre',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w100),
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
          ),

          //FIM 2 noticia

          //3º NOTICA
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child:
                  //Start Dialog
                  GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(40),
                                child: Image.network(
                                    "https://img.ibxk.com.br/2021/11/02/02170930807000.jpeg"),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Brasileiro de 17 anos ganha bolsa de estudo para jogar Fortnite em universidade dos EUA",
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        content: Text(
                          "Guilherme Mannarino foi aprovado em 31 universidades estrangeiras, mas escolheu a bolsa integral oferecida pela Universidade da Flórida Central, em Orlando. Por causa de sua habilidade no jogo, as faculdades queriam Mannarino em seus times de e-sports. O jovem irá cursar engenharia da computação na instituição.",
                          textAlign: TextAlign.center,
                        ),
                      );
                    },
                  );
                },
                //End Dialog
                //Card
                child: Card(
                  elevation: 10,
                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 20, right: 10, bottom: 5, left: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: Image.network(
                              "https://img.ibxk.com.br/2021/11/02/02170930807000.jpeg"),
                        ),
                      ),
                      SizedBox(height: 2),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Text(
                              "Brasileiro de 17 anos ganha bolsa de estudo para jogar Fortnite em universidade dos EUA",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Guilherme Mannarino foi aprovado em 31 universidades estrangeiras, mas escolheu a bolsa integral oferecida pela Universidade da Flórida Central, em Orlando. Por causa de sua habilidade no jogo, as faculdades queriam Mannarino em seus times de e-sports. O jovem irá cursar engenharia da computação na instituição.",
                              textAlign: TextAlign.center,
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
                              "https://www.google.com/search?client=opera-gx&q=Brasileiro+de+17+anos+ganha+bolsa+de+estudo+para+jogar+Fortnite+em+universidade+dos+EUA&sourceid=opera&ie=UTF-8&oe=UTF-8"),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.search_outlined),
                              Padding(
                                padding: EdgeInsets.all(16),
                                child: Text(
                                  'Pesquisar Sobre',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w100),
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
          ),

          //FIM 3  notiicia

          //4º NOTICA
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child:
                  //Start Dialog
                  GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(40),
                                child: Image.network(
                                    "https://img.olhardigital.com.br/wp-content/uploads/2022/03/Minecraft.jpg"),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Programador lidera time que irá recriar cidade inteira de Nova Iorque dentro do Minecraft",
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        content: Text(
                          "O time do alemão apenas conhecido como “Minefact” já conta com mais de 2.700 pessoas. Sua ideia é recriar cada detalhe da cidade em um escala de 1:1, com cada bloco de construção dentro do jogo representando um metro cúbico no mundo real. O desafio faz parte de um projeto ainda maior chamado “Build the Earth”, que já possui o contorno geológico da superfície da Terra. As informações são do site Curbed.",
                          textAlign: TextAlign.center,
                        ),
                      );
                    },
                  );
                },
                //End Dialog
                //Card
                child: Card(
                  elevation: 10,
                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 20, right: 10, bottom: 5, left: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: Image.network(
                              "https://img.olhardigital.com.br/wp-content/uploads/2022/03/Minecraft.jpg"),
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
                              "O time do alemão apenas conhecido como “Minefact” já conta com mais de 2.700 pessoas. Sua ideia é recriar cada detalhe da cidade em um escala de 1:1, com cada bloco de construção dentro do jogo representando um metro cúbico no mundo real. O desafio faz parte de um projeto ainda maior chamado “Build the Earth”, que já possui o contorno geológico da superfície da Terra. As informações são do site Curbed.",
                              textAlign: TextAlign.center,
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
                              "https://www.google.com/search?q=Programador+lidera+time+que+irá+recriar+cidade+inteira+de+Nova+Iorque+dentro+do+Minecraft&source=lmns&bih=627&biw=1325&client=opera-gx&hl=pt-BR&sa=X&ved=2ahUKEwiHkYzDi8v2AhWEhJUCHWmmBGoQ_AUoAHoECAEQAA"),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.search_outlined),
                              Padding(
                                padding: EdgeInsets.all(16),
                                child: Text(
                                  'Pesquisar Sobre',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w100),
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
          ),

          //FIM 4  notiicia
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
            Text(AppWidget.title[1] + " GAMING " + AppWidget.title[2]),
          ],
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
 color: Colors.blue.withOpacity(0.05),          ),
          gamesPageBody(),
        ],
      ),
    );
  }
}
