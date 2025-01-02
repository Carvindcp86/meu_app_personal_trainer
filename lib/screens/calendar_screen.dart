import 'package:flutter/material.dart';

class CalendarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calendário'),
      ),
      body: Center(
        child: Text('Esta é a tela do calendário'),
      ),
    );
  }
}

