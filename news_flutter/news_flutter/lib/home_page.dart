import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'app_controller.dart';
import 'app_widget.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
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

  Widget titleHomePage() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          AppWidget.title[0],
        ),
        Icon(
          Icons.timer_outlined,
        ),
        Text(AppWidget.title[1] + " " + AppWidget.title[2],
            style: TextStyle(
              fontSize: 15,
            )),
      ],
    );
  }

  Widget homePageBody() {
    Widget homePageNews1() {
      return
          //1st  News
          GestureDetector(
        onTap: () {
          showDialog(
            context: context,
            builder: (context) {
              return SingleChildScrollView(
                child: AlertDialog(
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
                  actions: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed('/home');
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              children: [
                                Icon(Icons.home),
                                SizedBox(width: 5),
                                Text("INICIO"),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed('/games');
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              children: [
                                Icon(Icons.family_restroom_outlined),
                                SizedBox(width: 5),
                                Text("RELACIONADOS"),
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              );
            },
          );
        },
        child: Container(
          width: double.infinity,
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              SizedBox(
                child: Image.network(
                  "https://cdn.trendsbr.com.br/uploads/noticias/2021/12/19/1hk92gwqcjk3a.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                color: Colors.black.withOpacity(0.6),
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 4.5,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    alignment: Alignment.bottomLeft,
                    color: Colors.green,
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        "JOGOS",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      "Conjunto de células cerebrais humanas aprendem a jogar Pong em laboratório mais rápido do que IAs",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 12.0,
                      bottom: 12.0,
                    ),
                    child: Row(
                      children: [
                        Text(
                          "Gustavo Olivera ",
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                          ),
                        ),
                        SizedBox(
                          child: Icon(
                            Icons.calendar_today,
                            color: Colors.white,
                            size: 18,
                          ),
                        ),
                        Text(
                          "14/03/2022",
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      );
      //END 1st News
    }

    Widget homePageNews2() {
      return // 2nd and 3rd News
          Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
        GestureDetector(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) {
                return SingleChildScrollView(
                  child: AlertDialog(
                    title: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SingleChildScrollView(
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
                    ),
                    content: Text(
                      "Caleb combinou um projeto open source de nariz artificial com uma incubadora que detecta mudanças nas concentrações de compostos orgânicos voláteis na respiração e os correlaciona a processos metabólicos e patofisiológicos no corpo. Seu modelo pode ainda ser mais barato e mais facilmente empregado do que métodos utilizados hoje. Caleb decidiu criar o dispositivo após ter pneumonia aos nove anos de idade e aprofundar sua pesquisa em um projeto de ciências na escola onde estuda, nos EUA. As informações são do blog de Benjamin Cabé.",
                      textAlign: TextAlign.center,
                    ),
                    actions: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pushNamed('/home');
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(
                                children: [
                                  Icon(Icons.home),
                                  SizedBox(width: 5),
                                  Text("INICIO"),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 2),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pushNamed('/technology');
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(
                                children: [
                                  Icon(Icons.family_restroom_outlined),
                                  SizedBox(width: 5),
                                  Text("RELACIONADOS"),
                                ],
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                );
              },
            );
          },
          child: Container(
            width: MediaQuery.of(context).size.width / 2.2,
            child: Padding(
              padding: const EdgeInsets.only(top: 2.0, right: 8.0, left: 8.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        height: 200,
                        child: Image.network(
                            "https://img.olhardigital.com.br/uploads/acervo_imagens/2015/10/20151008173723.jpg"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Garoto de 13 anos inventa “bafômetro” que utiliza inteligência artificial para detectar marcadores de pneumonia fúngica",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    color: Colors.purple,
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        "TECNOLOGIAS",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10.0,
                      bottom: 10.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Gustavo Olivera ",
                          style: TextStyle(),
                        ),
                        Row(
                          children: [
                            SizedBox(
                              child: Icon(
                                Icons.calendar_today,
                                size: 18,
                              ),
                            ),
                            Text(
                              "16/03/2022",
                              style: TextStyle(),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        //End 2nd news
        Container(
          margin: EdgeInsets.only(left: 10, right: 10),
          height: 400,
          width: 2,
          color: Colors.black.withOpacity(0.1),
        ),
        // 3rd News
        GestureDetector(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) {
                return SingleChildScrollView(
                  child: AlertDialog(
                    title: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Image.network(
                                "https://i0.wp.com/sumeonline.com.br/wp-content/uploads/2021/09/2021-08-26t220223z_740573968_rc29dp9zt4sp_rtrmadp_3_afghanistan-conflict-usa-biden_0-1.jpg"),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Presidente dos EUA emite ordem executiva para desenvolvimento do dólar digital",
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    content: Text(
                      "O país irá avaliar benefícios e riscos para consumidores, investidores e empresas, estabilidade financeira, além de segurança nacional. Segundo Joe Biden, o Dólar digital pode habilitar formas de pagamento e transferências de baixo custo, especialmente internacionalmente, evitando os riscos associados a outras moedas digitais. Especialistas alertam, no entanto, que moedas digitais emitidas por bancos centrais podem ser utilizadas como ferramenta para vigilância governamental e de controle. As informações são do site Ars Technica.",
                      textAlign: TextAlign.center,
                    ),
                    actions: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pushNamed('/home');
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(
                                children: [
                                  Icon(Icons.home),
                                  SizedBox(width: 5),
                                  Text("INICIO"),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pushNamed('/economy');
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(
                                children: [
                                  Icon(Icons.family_restroom_outlined),
                                  SizedBox(width: 5),
                                  Text("RELACIONADOS"),
                                ],
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                );
              },
            );
          },
          child: Container(
            width: MediaQuery.of(context).size.width / 2.2,
            child: Padding(
              padding: const EdgeInsets.only(top: 2.0, right: 8.0, left: 8.0),
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 2.0, right: 8.0, left: 8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        height: 200,
                        child: Image.network(
                            "https://i0.wp.com/sumeonline.com.br/wp-content/uploads/2021/09/2021-08-26t220223z_740573968_rc29dp9zt4sp_rtrmadp_3_afghanistan-conflict-usa-biden_0-1.jpg"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Presidente dos EUA emite ordem executiva para desenvolvimento do dólar digital",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    color: Colors.amber,
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        "ECONOMIA",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10.0,
                      bottom: 10.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Gustavo Olivera ",
                          style: TextStyle(),
                        ),
                        Row(
                          children: [
                            SizedBox(
                              child: Icon(
                                Icons.calendar_today,
                                size: 18,
                              ),
                            ),
                            Text(
                              "16/03/2022",
                              style: TextStyle(),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ]);
      //End 2nd and 3rd News
    }

    Widget homePageNews3() {
      return // 4rd News
          GestureDetector(
        onTap: () {
          showDialog(
            context: context,
            builder: (context) {
              return SingleChildScrollView(
                child: AlertDialog(
                  title: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: Image.network(
                              "https://img.olhardigital.com.br/wp-content/uploads/2020/10/20201002031900-1000x450.jpg"),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Vendas da Tesla disparam nos EUA com aumento no preço de combustíveis",
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  content: Text(
                    "As encomendas de novos veículos da marca teriam registrado um aumento de 100% apenas na última semana. A montadora, no entanto, não dá conta de produzir toda a demanda. A Tesla é a maior fabricante de veículos elétricos nos EUA, com cerca de 80% do mercado. As informações são do site Electrek.",
                    textAlign: TextAlign.center,
                  ),
                  actions: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed('/home');
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              children: [
                                Icon(Icons.home),
                                SizedBox(width: 5),
                                Text("INICIO"),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed('/economy');
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              children: [
                                Icon(Icons.family_restroom_outlined),
                                SizedBox(width: 5),
                                Text("RELACIONADOS"),
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              );
            },
          );
        },
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(right: 8.0, left: 8.0),
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        height: 300,
                        child: Image.network(
                            "https://img.olhardigital.com.br/wp-content/uploads/2020/10/20201002031900-1000x450.jpg"),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 40),
                      alignment: Alignment.bottomLeft,
                      color: Colors.amber,
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          "ECONOMIA",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Vendas da Tesla disparam nos EUA com aumento no preço de combustíveis",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "As encomendas de novos veículos da marca teriam registrado um aumento de 100% apenas...",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10.0,
                    bottom: 10.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Gustavo Olivera ",
                        style: TextStyle(),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            child: Icon(
                              Icons.calendar_today,
                              size: 18,
                            ),
                          ),
                          Text(
                            "16/03/2022",
                            style: TextStyle(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
      //End 4rd News
    }

    Widget homePageNews4() {
      return // 5th and 6th News
          Row(
        children: [
          GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return SingleChildScrollView(
                    child: AlertDialog(
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
                      actions: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pushNamed('/home');
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Row(
                                  children: [
                                    Icon(Icons.home),
                                    SizedBox(width: 5),
                                    Text("INICIO"),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pushNamed('/technology');
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Row(
                                  children: [
                                    Icon(Icons.family_restroom_outlined),
                                    SizedBox(width: 5),
                                    Text("RELACIONADOS"),
                                  ],
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  );
                },
              );
            },
            child: Container(
              width: MediaQuery.of(context).size.width / 2.2,
              child: Padding(
                padding: const EdgeInsets.only(top: 2.0, right: 8.0, left: 8.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          height: 200,
                          child: Image.network(
                              "https://pplware.sapo.pt/wp-content/uploads/2022/03/facebook_00-1.jpg"),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Facebook e Instagram permitirão postagens incentivando violência contra russos",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomLeft,
                      color: Colors.purple,
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          "TECNOLOGIAS",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 10.0,
                        bottom: 10.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Gustavo Olivera ",
                            style: TextStyle(),
                          ),
                          Row(
                            children: [
                              SizedBox(
                                child: Icon(
                                  Icons.calendar_today,
                                  size: 18,
                                ),
                              ),
                              Text(
                                "16/03/2022",
                                style: TextStyle(),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          //END 5th News

          Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            height: 400,
            width: 2,
            color: Colors.black.withOpacity(0.1),
          ),

          //6th News
          GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return SingleChildScrollView(
                    child: AlertDialog(
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
                      actions: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pushNamed('/home');
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Row(
                                  children: [
                                    Icon(Icons.home),
                                    SizedBox(width: 5),
                                    Text("INICIO"),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pushNamed('/games');
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Row(
                                  children: [
                                    Icon(Icons.family_restroom_outlined),
                                    SizedBox(width: 5),
                                    Text("RELACIONADOS"),
                                  ],
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  );
                },
              );
            },
            child: Container(
              width: MediaQuery.of(context).size.width / 2.2,
              child: Padding(
                padding: const EdgeInsets.only(top: 2.0, right: 8.0, left: 8.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 2.0, right: 8.0, left: 8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          height: 200,
                          child: Image.network(
                              "https://img.ibxk.com.br/2021/11/02/02170930807000.jpeg"),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Brasileiro de 17 anos ganha bolsa de estudo para jogar Fortnite em universidade dos EUA",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomLeft,
                      color: Colors.green,
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          "JOGOS",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 10.0,
                        bottom: 10.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Gustavo Olivera ",
                            style: TextStyle(),
                          ),
                          Row(
                            children: [
                              SizedBox(
                                child: Icon(
                                  Icons.calendar_today,
                                  size: 18,
                                ),
                              ),
                              Text(
                                "16/03/2022",
                                style: TextStyle(),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      );
      //END 5th and 6th News
    }

    return SingleChildScrollView(
      child: Column(
        children: [
          homePageNews1(),
          homePageNews2(),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10),
            height: 2,
            width: MediaQuery.of(context).size.width / 1.1,
            color: Colors.black.withOpacity(0.1),
          ),
          homePageNews3(),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10),
            height: 2,
            width: MediaQuery.of(context).size.width / 1.1,
            color: Colors.black.withOpacity(0.1),
          ),
          homePageNews4(),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10),
            height: 2,
            width: MediaQuery.of(context).size.width / 1.1,
            color: Colors.black.withOpacity(0.1),
          ),
          GestureDetector(
            onTap: () =>
                _launcherLink("https://www.linkedin.com/in/oliveiragusta/"),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'by Gustavo Oliveira',
                    style: TextStyle(
                      fontSize: 15,
                    ),
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
        title: titleHomePage(),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.blue.withOpacity(0.05),
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
