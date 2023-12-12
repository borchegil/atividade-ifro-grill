import 'package:flutter/material.dart';

import 'tela_menu.dart';

class TelaLogin extends StatelessWidget {
  const TelaLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Container para a logo e texto "IFRO's Grill"
          Container(
            padding: const EdgeInsets.only(top: 100.0, bottom: 42.0),
            color: const Color(0xFF5D6ADD), // Cor roxa para o fundo
            width: double.infinity, // Ocupa toda a largura
            child: Column(
              children: [
                Image.asset(
                  'images/logo.png',
                  height: 100.0,
                ),
                const Text(
                  'IFRO\'s Grill',
                  style: TextStyle(
                    color: Color(0xFFFFF500),
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          // Container para os outros elementos
          Expanded(
            child: Container(
              color: Colors.white, // Cor branca para o fundo
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  const Text(
                    'Entrar',
                    style: TextStyle(
                      fontSize: 48.0,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 48.0),
                  _buildTextField('Username'),
                  const SizedBox(height: 16.0),
                  _buildTextField('Password', obscureText: true),
                  _buildForgotPasswordButton(),
                  const SizedBox(height: 8.0),
                  _buildLoginButton(context),
                  _buildRegisterButton(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextField(String label, {bool obscureText = false}) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: label,
        border: const OutlineInputBorder(),
      ),
    );
  }

  Widget _buildForgotPasswordButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
          child: const Text('Esqueceu sua senha?',
              style: TextStyle(color: Colors.black)),
          onPressed: () {
            // Implementar funcionalidade de recuperação de senha
          },
        ),
      ],
    );
  }

  Widget _buildLoginButton(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(16.0),
        backgroundColor: const Color(0xFF0072DC),
      ),
      child: const Text('Fazer login'),
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const TelaMenu()));
      },
    );
  }

  Widget _buildRegisterButton() {
    return TextButton(
      child: const Text(
        'Não é registrado? clique aqui',
        style: TextStyle(color: Colors.black),
      ),
      onPressed: () {
        // Implementar funcionalidade de registro
      },
    );
  }
}
