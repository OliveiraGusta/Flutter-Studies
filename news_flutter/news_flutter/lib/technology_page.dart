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
                                    "https://img.olhardigital.com.br/wp-content/uploads/2022/02/shutterstock_1975824899-1000x450.jpg"),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Número de cadastros com biometria quase triplica no sistema GovBR",
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        content: Text(
                          "O motivo é a exigência de assinaturas avançadas para acesso a serviços públicos pela internet. Atualmente já existem 15 milhões de cadastros com nível de segurança “Ouro”, 11,8 milhões no nível “Prata” e 99,2 milhões “Bronze”. A identidade digital de nível Ouro requer biometria facial, a Prata se refere a cadastros acessados com conta e senha de bancos integrados à plataforma e Bronze é o cadastro básico de login e senha. As informações são do site Convergência Digital.",
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
                              "https://img.olhardigital.com.br/wp-content/uploads/2022/02/shutterstock_1975824899-1000x450.jpg"),
                        ),
                      ),
                      SizedBox(height: 2),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Text(
                              "Número de cadastros com biometria quase triplica no sistema GovBR",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "O motivo é a exigência de assinaturas avançadas para acesso a serviços públicos pela internet. Atualmente já existem 15 milhões de cadastros com nível de segurança “Ouro”, 11,8 milhões no nível “Prata” e 99,2 milhões “Bronze”. A identidade digital de nível Ouro requer biometria facial, a Prata se refere a cadastros acessados com conta e senha de bancos integrados à plataforma e Bronze é o cadastro básico de login e senha. As informações são do site Convergência Digital.",
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
                              "https://www.google.com/search?client=opera-gx&q=Número+de+cadastros+com+biometria+quase+triplica+no+sistema+GovBR&sourceid=opera&ie=UTF-8&oe=UTF-8"),
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

          //2º NOTICIA
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
                                    "https://pplware.sapo.pt/wp-content/uploads/2022/03/facebook_00-1.jpg"),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Facebook e Instagram permitirão postagens incentivando violência contra russos",
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        content: Text(
                          "A Reuters teria obtido e-mails internos da Meta delineando as mudanças em políticas de discurso de ódio no contexto da guerra na Ucrânia. As mudanças seriam temporárias e se aplicariam a posts originados da Letônia, Lituânia, Estônia, Polônia, Eslováquia, Hungria, Romênia, Rússia e Ucrânia. As informações são da Reuters.",
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
                              "https://pplware.sapo.pt/wp-content/uploads/2022/03/facebook_00-1.jpg"),
                        ),
                      ),
                      SizedBox(height: 2),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Text(
                              "Facebook e Instagram permitirão postagens incentivando violência contra russos",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "A Reuters teria obtido e-mails internos da Meta delineando as mudanças em políticas de discurso de ódio no contexto da guerra na Ucrânia. As mudanças seriam temporárias e se aplicariam a posts originados da Letônia, Lituânia, Estônia, Polônia, Eslováquia, Hungria, Romênia, Rússia e Ucrânia. As informações são da Reuters.",
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
                              "https://www.google.com/search?q=Facebook+e+Instagram+permitirão+postagens+incentivando+violência+contra+russos&source=lmns&bih=627&biw=1325&client=opera-gx&hs=jDK&hl=pt-BR&sa=X&ved=2ahUKEwiHms6Lx8v2AhXpiZUCHabHBZAQ_AUoAHoECAEQAA"),
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
          //FIM 2 NOTICIA

          //3º NOTICIA
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
                                    "https://img.olhardigital.com.br/uploads/acervo_imagens/2015/10/20151008173723.jpg"),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Garoto de 13 anos inventa “bafômetro” que utiliza inteligência artificial para detectar marcadores de pneumonia fúngica",
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        content: Text(
                          "Caleb combinou um projeto open source de nariz artificial com uma incubadora que detecta mudanças nas concentrações de compostos orgânicos voláteis na respiração e os correlaciona a processos metabólicos e patofisiológicos no corpo. Seu modelo pode ainda ser mais barato e mais facilmente empregado do que métodos utilizados hoje. Caleb decidiu criar o dispositivo após ter pneumonia aos nove anos de idade e aprofundar sua pesquisa em um projeto de ciências na escola onde estuda, nos EUA. As informações são do blog de Benjamin Cabé.",
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
                              "https://img.olhardigital.com.br/uploads/acervo_imagens/2015/10/20151008173723.jpg"),
                        ),
                      ),
                      SizedBox(height: 2),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Text(
                              "Garoto de 13 anos inventa “bafômetro” que utiliza inteligência artificial para detectar marcadores de pneumonia fúngica",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Caleb combinou um projeto open source de nariz artificial com uma incubadora que detecta mudanças nas concentrações de compostos orgânicos voláteis na respiração e os correlaciona a processos metabólicos e patofisiológicos no corpo. Seu modelo pode ainda ser mais barato e mais facilmente empregado do que métodos utilizados hoje. Caleb decidiu criar o dispositivo após ter pneumonia aos nove anos de idade e aprofundar sua pesquisa em um projeto de ciências na escola onde estuda, nos EUA. As informações são do blog de Benjamin Cabé.",
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
                              "https://www.google.com/search?q=Garoto+de+13+anos+inventa+“bafômetro”+que+utiliza+inteligência+artificial+para+detectar+marcadores+de+pneumonia+fúngica&source=lmns&bih=627&biw=1325&client=opera-gx&hs=aFK&hl=pt-BR&sa=X&ved=2ahUKEwjb4Ne-x8v2AhUskZUCHQvsB-sQ_AUoAHoECAEQAA"),
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
          //FIM 3° NOTICIA
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
