import 'package:flutter/material.dart';

class AuthService {
  // Simulação de login
  Future<bool> login(String username, String password) async {
    // Lógica de autenticação
    await Future.delayed(Duration(seconds: 2)); // Simulação de tempo de processamento
    return username == 'user' && password == 'password';
  }
}
