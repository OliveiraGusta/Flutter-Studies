import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'home_page.dart';

class UrlLinks extends StatelessWidget {
  const UrlLinks({Key? key}) : super(key: key);

  Future<void> _launcherLink(String url) async {
    if (await canLaunch(url)) {
      await launch(url, forceWebView: false, forceSafariVC: false);
    } else {
      print('O link $url não pode ser executado');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Links'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomSwith(),
            TextButton.icon(
              icon: Icon(Icons.link),
              label: Text('Link Externo'),
              onPressed: () => _launcherLink(
                  "https://www.google.com/search?q=Programador+lidera+time+que+irá+recriar+cidade+inteira+de+Nova+Iorque+dentro+do+Minecraft"),
            ),
          ],
        ),
      ),
    );
  }
}
