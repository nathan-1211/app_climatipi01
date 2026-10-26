import 'package:app_climatipi01/models/catalogo_item.dart';
import 'package:app_climatipi01/screen/clima_atual.dart';
import 'package:app_climatipi01/screen/detalhes_avancados.dart';
import 'package:app_climatipi01/screen/previsao_semana.dart';
import 'package:flutter/material.dart';

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
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final List<CatalogoItem> secoes = [
    CatalogoItem(
      titulo: 'Clima atual',
      icone: Icons.wb_sunny,
      descricao: 'Temperatura e condições de agora',
      destino: ClimaAtualScreen(),
    ),
    CatalogoItem(
      titulo: 'Previsão da semana',
      icone: Icons.calendar_month,
      descricao: 'Os próximos dias em detalhe',
      destino: PrevisaoSemanaScreen(),
    ),
    CatalogoItem(
      titulo: 'Detalhes avançados',
      icone: Icons.analytics,
      descricao: 'Alertas, indicadores e tags',
      destino: DetalhesAvancadosScreen(),
    ),
  ];

  // Sem "const": a lista secoes não é constante.
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ClimaApp')),
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(16),
        crossAxisSpacing: 16,
        childAspectRatio: 0.85,
        children: secoes
            .map(
              (item) => GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => item.destino),
                ),
                child: Card(
                  elevation: 4,
                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(item.icone, size: 48, color: Colors.blue),
                        Text(
                          item.titulo,
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          item.descricao,
                          textAlign: TextAlign.center,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
