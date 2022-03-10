import 'package:flutter/material.dart';

class InitialPage extends StatefulWidget {
  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  String name = '';

  Widget initialBody() {
    return Column(
      children: [
        SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 50,
                        child: Image.network(
                            'https://store-images.s-microsoft.com/image/apps.38986.9007199266245737.4ac20127-5f19-4331-ac09-d2ce324e483a.6ce1617b-b233-4789-ad55-712caf23cfb3'),
                      ),                   
                      Text('FLUTTER NEWS', style: TextStyle(color: Colors.black, fontSize: 45) ,),
                    ],
                  ),
                  SizedBox(height: 10),
                   Text('Tudo em um só lugar & personalizado para você, notícias de hoje de todo o Brasil', style: TextStyle(color: Colors.black54, fontSize: 20 ) ,),
                  SizedBox(height: 300),
                  TextField(
                    onChanged: (text) {
                      name = text;
                    },
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      labelText: 'Nome',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 20),
                   ButtonTheme(
                    height: 60.0,
                    
                   child:
                    RaisedButton(
                      color: Colors.white,
                      onPressed: () {
                        if (name == 'Gustavo') {
                          Navigator.of(context).pushReplacementNamed('/home');
                        } else {
                          Navigator.of(context).pushReplacementNamed('/');
                        }
                      },
                      child: 
                      Text('Começe a ler', 
                      style: TextStyle(
                        color: Colors.red, 
                        fontSize: 20.0) ,),
                 ),
                    
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Image.network(
              'https://1.bp.blogspot.com/-02BZ3kdt-No/XXR8cgm1FHI/AAAAAAAAB7k/CtrMdhE8Lyg7irDz4cVw-kPyFFj-0crIwCLcBGAs/s1600/Color%2Bbars.jpg',
              fit: BoxFit.cover)),
      Container(
        color: Colors.black.withOpacity(0.3),
      ),
      initialBody(),
    ]));
  }
}
