import 'package:flutter/material.dart';

class TrainingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rotinas de Treinos'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('MUSCULAÇÃO', style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold)),
            Text('De 16/04/2024 até 03/01/2025', style: TextStyle(fontSize: 16.0, color: Colors.grey[600])),
            Text('Redução de Gordura/Hipertrofia', style: TextStyle(fontSize: 18.0)),
            Text('Nível: Avançado', style: TextStyle(fontSize: 18.0)),
            SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: <Widget>[
                  _buildTrainingDay(context, 'Segunda', 'Quadríceps com estímulo em posterior', '04/12/2024', 8),
                  _buildTrainingDay(context, 'Terça', 'Peito', '03/10/2024', 9),
                  // Adicione mais dias conforme necessário
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTrainingDay(BuildContext context, String day, String training, String lastCompleted, int historyCount) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(day, style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
            Text(training, style: TextStyle(fontSize: 16.0)),
            Text('Último treino concluído em: $lastCompleted', style: TextStyle(fontSize: 14.0, color: Colors.grey[600])),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Histórico ($historyCount entradas)', style: TextStyle(fontSize: 14.0)),
                Text('Evolução', style: TextStyle(fontSize: 14.0)),
                ElevatedButton(
                  onPressed: () {
                    // Navegar para detalhes do treino
                  },
                  child: Text('Ver Treino'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
