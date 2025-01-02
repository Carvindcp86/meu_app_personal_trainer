import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  CustomButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue, // Cor de fundo do botão
        foregroundColor: Colors.white, // Cor do texto do botão
        textStyle: TextStyle(fontSize: 18.0),
      ),
      child: Text(text),
    );
  }
}
