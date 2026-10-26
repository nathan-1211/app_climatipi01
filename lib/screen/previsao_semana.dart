import 'package:app_climatipi01/models/previsao_dia.dart';
import 'package:app_climatipi01/widgets/titulo_secao.dart';
import 'package:flutter/material.dart';

class PrevisaoSemanaScreen extends StatelessWidget {
  const PrevisaoSemanaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<PrevisaoDia> dias = [
      PrevisaoDia(
        dia: 'Sexta',
        icone: Icons.wb_sunny,
        cor: Colors.orange,
        minima: '19°C',
        maxima: '30°C',
      ),
      PrevisaoDia(
        dia: 'Sábado',
        icone: Icons.cloud,
        cor: Colors.grey,
        minima: '18°C',
        maxima: '27°C',
      ),
      PrevisaoDia(
        dia: 'Domingo',
        icone: Icons.umbrella,
        cor: Colors.indigo,
        minima: '17°C',
        maxima: '24°C',
      ),
      PrevisaoDia(
        dia: 'Segunda',
        icone: Icons.cloud,
        cor: Colors.grey,
        minima: '16°C',
        maxima: '25°C',
      ),
      PrevisaoDia(
        dia: 'Terça',
        icone: Icons.wb_sunny,
        cor: Colors.orange,
        minima: '18°C',
        maxima: '29°C',
      ),
    ];

    return Scaffold(
      appBar: AppBar(title: Text('Previsão da semana')),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          // a) Faixa de temperatura
          TituloSecao(titulo: 'Faixa de temperatura'),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 60,
                  color: Colors.lightBlue.shade200,
                  child: Center(child: Text('18°C')),
                ),
              ),
              Flexible(
                flex: 2,
                child: Container(
                  height: 60,
                  color: Colors.amber.shade200,
                  child: Center(child: Text('26°C')),
                ),
              ),
              Expanded(
                child: Container(
                  height: 60,
                  color: Colors.deepOrange.shade200,
                  child: Center(child: Text('31°C')),
                ),
              ),
            ],
          ),

          Divider(),

          // b) Resumo do dia
          TituloSecao(titulo: 'Resumo do dia'),
          Container(
            height: 200,
            color: Colors.grey.shade300,
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.lightBlue.shade200,
                    child: Center(child: Text('Manhã: 20°C')),
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Container(
                    color: Colors.orange.shade200,
                    child: Center(child: Text('Tarde: 29°C')),
                  ),
                ),
              ],
            ),
          ),

          Divider(),

          // c) Próximos dias
          TituloSecao(titulo: 'Próximos dias'),
          Column(
            children: dias
                .map(
                  (d) => Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      children: [
                        Expanded(flex: 2, child: Text(d.dia)),
                        Icon(d.icone, color: d.cor, size: 28),
                        Expanded(child: Text(d.minima)),
                        Expanded(child: Text(d.maxima)),
                      ],
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
