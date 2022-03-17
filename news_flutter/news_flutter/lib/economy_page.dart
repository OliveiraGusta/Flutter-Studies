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
                                    "https://s.yimg.com/ny/api/res/1.2/hclATIgx7IMGUBMsiDersQ--/YXBwaWQ9aGlnaGxhbmRlcjt3PTY0MDtoPTQyNw--/https://s.yimg.com/uu/api/res/1.2/tXtrQ2omG9xF6H3FAk5aEA--~B/aD00MTA7dz02MTU7YXBwaWQ9eXRhY2h5b24-/https://media.zenfs.com/pt/fx_empire_904/daf6236caf50592ad427212e2a98341c"),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Valor de mercado do Nubank já caiu 20% desde lançamento de ações",
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        content: Text(
                          "Uma decisão do Banco Central nesta semana impactou ainda mais as ações da empresa, exigindo aportes maiores de capital para acompanhar o crescimento e diversificação de serviços ofertados por fintechs. Além do Nubank, a nova norma do BC também afeta empresas como Stone, PicPay, Mercado Pago, PagSeguro, entre outras, e deve reduzir a rentabilidade desses negócios. As informações são do site Suno Research.",
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
                              "https://s.yimg.com/ny/api/res/1.2/hclATIgx7IMGUBMsiDersQ--/YXBwaWQ9aGlnaGxhbmRlcjt3PTY0MDtoPTQyNw--/https://s.yimg.com/uu/api/res/1.2/tXtrQ2omG9xF6H3FAk5aEA--~B/aD00MTA7dz02MTU7YXBwaWQ9eXRhY2h5b24-/https://media.zenfs.com/pt/fx_empire_904/daf6236caf50592ad427212e2a98341c"),
                        ),
                      ),
                      SizedBox(height: 2),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Text(
                              "Valor de mercado do Nubank já caiu 20% desde lançamento de ações",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Uma decisão do Banco Central nesta semana impactou ainda mais as ações da empresa, exigindo aportes maiores de capital para acompanhar o crescimento e diversificação de serviços ofertados por fintechs. Além do Nubank, a nova norma do BC também afeta empresas como Stone, PicPay, Mercado Pago, PagSeguro, entre outras, e deve reduzir a rentabilidade desses negócios. As informações são do site Suno Research.",
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
                              "https://www.google.com/search?q=Valor+de+mercado+do+Nubank+já+caiu+20%25+desde+lançamento+de+ações&client=opera-gx&hs=D9z&bih=627&biw=1325&hl=pt-BR&sxsrf=APq-WBvddWQWw4apqqpnfRPBrhTLLdoe7g%3A1647467666844&ei=klwyYqWNM-ic5OUP3c2tqA0&ved=0ahUKEwilnr6oz8v2AhVoDrkGHd1mC9UQ4dUDCA0&uact=5&oq=Valor+de+mercado+do+Nubank+já+caiu+20%25+desde+lançamento+de+ações&gs_lcp=Cgdnd3Mtd2l6EAMyBwgjELACECc6BwgjELADECdKBAhBGABKBAhGGABQqAdY4BVg6xZoAnAAeACAAfQBiAH9CpIBBTAuNS4ymAEAoAEByAEBwAEB&sclient=gws-wiz"),
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
                              "https://i0.wp.com/sumeonline.com.br/wp-content/uploads/2021/09/2021-08-26t220223z_740573968_rc29dp9zt4sp_rtrmadp_3_afghanistan-conflict-usa-biden_0-1.jpg"),
                        ),
                      ),
                      SizedBox(height: 2),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Text(
                              "Presidente dos EUA emite ordem executiva para desenvolvimento do dólar digital",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "O país irá avaliar benefícios e riscos para consumidores, investidores e empresas, estabilidade financeira, além de segurança nacional. Segundo Joe Biden, o Dólar digital pode habilitar formas de pagamento e transferências de baixo custo, especialmente internacionalmente, evitando os riscos associados a outras moedas digitais. Especialistas alertam, no entanto, que moedas digitais emitidas por bancos centrais podem ser utilizadas como ferramenta para vigilância governamental e de controle. As informações são do site Ars Technica.",
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
                              "https://www.google.com/search?client=opera-gx&q=Presidente+dos+EUA+emite+ordem+executiva+para+desenvolvimento+do+dólar+digital&sourceid=opera&ie=UTF-8&oe=UTF-8"),
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
          //FIM 2 notiicia

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
                                    "https://s2.glbimg.com/ijq39j7pihxIY7-6dmb2MotdXOc=/1200x/smart/filters:cover():strip_icc()/s01.video.glbimg.com/x720/6609120.jpg",
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Câmara regulamenta negociação com moedas virtuais",
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                          content: Text(
                            "O Projeto de Lei 2303/15 define o que é um ativo virtual — representação digital de valor negociado por meios eletrônicos e utilizado para realização de pagamentos ou investimento — e quem será considerado prestador de serviços na área. O texto também pretende coibir crimes de estelionato e lavagem de dinheiro relacionados a transações com esses ativos. As informações são da Agência Câmara de Notícias.",
                            textAlign: TextAlign.center,
                          ));
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
                            "https://s2.glbimg.com/ijq39j7pihxIY7-6dmb2MotdXOc=/1200x/smart/filters:cover():strip_icc()/s01.video.glbimg.com/x720/6609120.jpg",
                          ),
                        ),
                      ),
                      SizedBox(height: 2),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Text(
                              "Câmara regulamenta negociação com moedas virtuais",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "O Projeto de Lei 2303/15 define o que é um ativo virtual — representação digital de valor negociado por meios eletrônicos e utilizado para realização de pagamentos ou investimento — e quem será considerado prestador de serviços na área. O texto também pretende coibir crimes de estelionato e lavagem de dinheiro relacionados a transações com esses ativos. As informações são da Agência Câmara de Notícias.",
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
                              "https://www.google.com/search?q=Câmara+regulamenta+negociação+com+moedas+virtuais&client=opera-gx&hs=PG0&sxsrf=APq-WBvK1159JLlw4cNkqLp0HTm11_FFyA%3A1647468112187&ei=UF4yYqyKC6Wu5OUP9tOXwAw&ved=0ahUKEwis8uv80Mv2AhUlF7kGHfbpBcgQ4dUDCA0&uact=5&oq=Câmara+regulamenta+negociação+com+moedas+virtuais&gs_lcp=Cgdnd3Mtd2l6EAMyBwgAEEcQsAMyBwgAEEcQsAMyBwgAEEcQsAMyBwgAEEcQsAMyBwgAEEcQsAMyBwgAEEcQsAMyBwgAEEcQsAMyBwgAEEcQsANKBAhBGABKBAhGGABQAFgAYOEOaAFwAXgAgAEAiAEAkgEAmAEAoAECyAEIwAEB&sclient=gws-wiz"),
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
          //FIM 3 notiicia

          //4º NOTICIA
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
                              "https://img.olhardigital.com.br/wp-content/uploads/2020/10/20201002031900-1000x450.jpg"),
                        ),
                      ),
                      SizedBox(height: 2),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Text(
                              "Vendas da Tesla disparam nos EUA com aumento no preço de combustíveis",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "As encomendas de novos veículos da marca teriam registrado um aumento de 100% apenas na última semana. A montadora, no entanto, não dá conta de produzir toda a demanda. A Tesla é a maior fabricante de veículos elétricos nos EUA, com cerca de 80% do mercado. As informações são do site Electrek.",
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
                              "https://www.google.com/search?client=opera-gx&q=Vendas+da+Tesla+disparam+nos+EUA+com+aumento+no+preço+de+combustíveis&sourceid=opera&ie=UTF-8&oe=UTF-8"),
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
          //FIM 4 notiicia
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
            color: Colors.blue.withOpacity(0.05),
          ),
          economyPageBody(),
        ],
      ),
    );
  }
}
