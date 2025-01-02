import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/calendar_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meu App Personal Trainer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.light,
        textTheme: TextTheme(
          headlineLarge: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.black),  // Corrigido
          bodyLarge: TextStyle(fontSize: 16.0, color: Colors.grey[600]),  // Corrigido
        ),
      ),
      home: HomeScreen(),  // Atualizado para usar a HomeScreen
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MFIT Personal'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Boa tarde, Carlos!', style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Row(
              children: <Widget>[
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/profile_picture.png'), // Substitua pela imagem do perfil
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Grasieli Checcan', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
                    Text('CREF: 162084-G/SP', style: TextStyle(fontSize: 16.0, color: Colors.grey[600])),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Text('Frequência de Treinos', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _buildTrainingDay('S', 'X'),
                _buildTrainingDay('T', 'X'),
                _buildTrainingDay('Q', '!'),
                _buildTrainingDay('Q', 'O'),
                _buildTrainingDay('S', 'O'),
                _buildTrainingDay('S', 'O'),
                _buildTrainingDay('D', 'O'),
              ],
            ),
            SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                children: <Widget>[
                  _buildMenuButton('Treinos', Icons.fitness_center, context),
                  _buildMenuButton('Treinos Extra', Icons.add_circle, context),
                  _buildMenuButton('Avaliações', Icons.assignment, context),
                  _buildMenuButton('Meu Progresso', Icons.show_chart, context),
                  _buildMenuButton('Faturas', Icons.receipt, context),
                  _buildMenuButton('Arquivos', Icons.folder, context),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Início'),
          BottomNavigationBarItem(icon: Icon(Icons.camera), label: 'Instagram'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'WhatsApp'),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menu'),
        ],
      ),
    );
  }

  Widget _buildTrainingDay(String day, String status) {
    return Column(
      children: <Widget>[
        Text(day, style: TextStyle(fontSize: 16.0)),
        Text(status, style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
      ],
    );
  }

  Widget _buildMenuButton(String title, IconData icon, BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Ação para cada botão
        if (title == 'Treinos') {
          Navigator.push(context, MaterialPageRoute(builder: (context) => CalendarScreen()));
        } else if (title == 'Treinos Extra') {
          Navigator.push(context, MaterialPageRoute(builder: (context) => CalendarScreen()));
        } else if (title == 'Avaliações') {
          Navigator.push(context, MaterialPageRoute(builder: (context) => CalendarScreen()));
        } else if (title == 'Meu Progresso') {
          Navigator.push(context, MaterialPageRoute(builder: (context) => CalendarScreen()));
        } else if (title == 'Faturas') {
          Navigator.push(context, MaterialPageRoute(builder: (context) => CalendarScreen()));
        } else if (title == 'Arquivos') {
          Navigator.push(context, MaterialPageRoute(builder: (context) => CalendarScreen()));
        }
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue, // Cor de fundo do botão
        foregroundColor: Colors.white, // Cor do texto do botão
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(icon, size: 50),
          Text(title, textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
