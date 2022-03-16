import 'package:flutter/material.dart';
import 'package:news_flutter/home_page.dart';
import 'package:url_launcher/url_launcher.dart';
import 'app_controller.dart';
import 'app_widget.dart';

class TechnologyPage extends StatefulWidget {
  @override
  State<TechnologyPage> createState() {
    return _TechnologyPageState();
  }
}

class _TechnologyPageState extends State<TechnologyPage> {
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

  Widget technologyPageBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          //1º NOTICIA
          
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

          //FIM 1 NOTICIA
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
            Text(AppWidget.title[1] + " TECHNOLOGY " + AppWidget.title[2]),
          ],
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
            color: Color.fromARGB(255, 185, 208, 220).withOpacity(0.3),
          ),
          technologyPageBody(),
        ],
      ),
    );
  }
}
