import 'package:flutter/material.dart';
import '../services/auth_service.dart';
import 'profile_screen.dart';
import '../widgets/custom_button.dart';

class LoginScreen extends StatelessWidget {
  final AuthService authService = AuthService();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: usernameController,
                decoration: InputDecoration(labelText: 'Usuário'),
              ),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(labelText: 'Senha'),
                obscureText: true,
              ),
              SizedBox(height: 20),
              CustomButton(
                text: 'Entrar',
                onPressed: () async {
                  bool success = await authService.login(usernameController.text, passwordController.text);
                  if (success) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProfileScreen()),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Login falhou')));
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
