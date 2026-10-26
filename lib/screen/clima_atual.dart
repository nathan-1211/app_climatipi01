import 'package:app_climatipi01/widgets/titulo_secao.dart';
import 'package:flutter/material.dart';

class ClimaAtualScreen extends StatelessWidget {
  const ClimaAtualScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Clima atual')),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          // a) Cidade atual
          TituloSecao(titulo: 'Cidade atual'),
          Container(
            color: Colors.lightBlue.shade100,
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Text(
                    'Santo André',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Quinta-feira, 15 de outubro',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ),

          Divider(),

          // b) Temperatura
          TituloSecao(titulo: 'Temperatura'),
          Center(
            child: Column(
              children: [
                Text(
                  '26°C',
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                  ),
                ),
                SizedBox(height: 8),
                Text('Sensação térmica: 28°C', style: TextStyle(fontSize: 16)),
              ],
            ),
          ),

          Divider(),

          // c) Condição do tempo
          TituloSecao(titulo: 'Condição do tempo'),
          Image.network('https://picsum.photos/id/1018/400/200', height: 200),

          Divider(),

          // d) Detalhes
          TituloSecao(titulo: 'Detalhes'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.water_drop, color: Colors.blue, size: 32),
              Icon(Icons.air, color: Colors.grey, size: 32),
              Icon(Icons.umbrella, color: Colors.indigo, size: 32),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [Text('65%'), Text('12 km/h'), Text('30%')],
            ),
          ),

          Divider(),

          // e) Atualização
          TituloSecao(titulo: 'Atualização'),
          Center(
            child: ElevatedButton(onPressed: () {}, child: Text('Atualizar')),
          ),
          SizedBox(height: 16),
          Container(
            height: 80,
            color: Colors.grey.shade200,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Text('Última atualização: 14:30'),
            ),
          ),
        ],
      ),
    );
  }
}
