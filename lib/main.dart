import 'package:flutter/material.dart';
import 'package:app_climatipi01/widgets/titulo_secao.dart';
import 'package:app_climatipi01/widgets/item_detalhe.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ClimaApp',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('ClimaApp')),
        body: ListView(
          padding: EdgeInsets.all(16),
          children: [
            // a) Cidade atual
            TituloSecao(titulo: 'Cidade atual'),
            Text(
              'Santo André',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            Text(
              'Quinta-feira, 15 de outubro',
              style: TextStyle(fontSize: 16),
            ),

            Divider(),

            // b) Temperatura
            TituloSecao(titulo: 'Temperatura'),
            Text(
              '26°C',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),
            ),
            Text(
              'Sensação térmica: 28°C',
              style: TextStyle(fontSize: 16),
            ),

            Divider(),

            // c) Condição do tempo
            TituloSecao(titulo: 'Condição do tempo'),
            Image.network(
              'https://picsum.photos/id/1018/400/200',
              height: 200,
            ),

            Divider(),

            // d) Detalhes
            TituloSecao(titulo: 'Detalhes'),
            Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: [
    ItemDetalhe(icone: Icons.water_drop, cor: Colors.blue, valor: '65%'),
    ItemDetalhe(icone: Icons.air, cor: Colors.grey, valor: '12 km/h'),
    ItemDetalhe(icone: Icons.umbrella, cor: Colors.indigo, valor: '30%'),
  ],
),

            Divider(),

            // e) Atualização
            TituloSecao(titulo: 'Atualização'),
            ElevatedButton(
              onPressed: () {},
              child: Text('Atualizar'),
            ),
          ],
        ),
      ),
    );
  }
}