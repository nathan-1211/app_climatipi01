import 'package:app_climatipi01/models/indicador_clima.dart';
import 'package:app_climatipi01/widgets/titulo_secao.dart';
import 'package:flutter/material.dart';

class DetalhesAvancadosScreen extends StatelessWidget {
  const DetalhesAvancadosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<IndicadorClima> indicadores = [
      IndicadorClima(
        icone: Icons.wb_sunny,
        cor: Colors.orange,
        valor: '6',
        nome: 'Índice UV',
      ),
      IndicadorClima(
        icone: Icons.speed,
        cor: Colors.indigo,
        valor: '1012 hPa',
        nome: 'Pressão',
      ),
      IndicadorClima(
        icone: Icons.visibility,
        cor: Colors.teal,
        valor: '10 km',
        nome: 'Visibilidade',
      ),
      IndicadorClima(
        icone: Icons.wb_twilight,
        cor: Colors.deepOrange,
        valor: '05:48',
        nome: 'Nascer do sol',
      ),
    ];

    return Scaffold(
      appBar: AppBar(title: Text('Detalhes avançados')),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          // a) Alertas
          TituloSecao(titulo: 'Alertas'),
          Card(
            child: ListTile(
              leading: Icon(Icons.warning, color: Colors.orange),
              title: Text('Chuva forte'),
              subtitle: Text('Previsto para hoje, a partir das 18h'),
              trailing: Icon(Icons.chevron_right),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.air, color: Colors.blueGrey),
              title: Text('Ventos fortes'),
              subtitle: Text('Rajadas de até 60 km/h durante a noite'),
              trailing: Icon(Icons.chevron_right),
            ),
          ),

          Divider(),

          // b) Indicadores
          TituloSecao(titulo: 'Indicadores'),
          GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: indicadores
                .map(
                  (ind) => Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(ind.icone, color: ind.cor, size: 32),
                        Text(
                          ind.valor,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(ind.nome),
                      ],
                    ),
                  ),
                )
                .toList(),
          ),

          Divider(),

          // c) Condição do tempo
          TituloSecao(titulo: 'Condição do tempo'),
          Stack(
            children: [
              Image.network(
                'https://picsum.photos/id/1018/400/200',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Positioned(
                left: 16,
                bottom: 16,
                child: Text(
                  '26°C',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                top: 16,
                right: 16,
                child: Icon(Icons.wb_sunny, color: Colors.white, size: 32),
              ),
            ],
          ),

          Divider(),

          // d) Tags
          TituloSecao(titulo: 'Tags'),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              Chip(avatar: Icon(Icons.umbrella), label: Text('Chuva forte')),
              Chip(avatar: Icon(Icons.wb_sunny), label: Text('UV alto')),
              Chip(label: Text('Vento moderado')),
              Chip(label: Text('Umidade alta')),
              Chip(label: Text('Frente fria')),
            ],
          ),
        ],
      ),
    );
  }
}
