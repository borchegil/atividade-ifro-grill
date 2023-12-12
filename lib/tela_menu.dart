import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TelaMenu extends StatelessWidget {
  const TelaMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF5D6ADD),
        title: const Text('IFRO\'s Grill'),
        actions: <Widget>[
          IconButton(
            icon: SvgPicture.asset(
              'images/icon-cart.svg',
            ),
            onPressed: () {
              // Implementar funcionalidade do carrinho de compras
            },
          ),
        ],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(16.0),
        crossAxisSpacing: 16.0,
        mainAxisSpacing: 16.0,
        children: <Widget>[
          _buildMenuItem(
              SvgPicture.asset('images/icon-petiscos.svg'), 'Petiscos'),
          _buildMenuItem(SvgPicture.asset('images/icon-pizzas.svg'), 'Pizzas'),
          _buildMenuItem(
              SvgPicture.asset('images/icon-lanches.svg'), 'Lanches'),
          _buildMenuItem(
              SvgPicture.asset('images/icon-bebidas.svg'), 'Bebidas'),
          _buildMenuItem(
              SvgPicture.asset('images/icon-sobremesas.svg'), 'Sobremesas'),
          _buildMenuItem(SvgPicture.asset('images/icon-cafes.svg'), 'Cafés'),
          _buildMenuItem(
              SvgPicture.asset('images/icon-populares.svg'), 'Populares'),
          _buildMenuItem(
              SvgPicture.asset('images/icon-completo.svg'), 'Completo'),
        ],
      ),
    );
  }

  Widget _buildMenuItem(Widget icon, String label) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 4.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            radius: 30.0,
            backgroundColor: Colors.blue.shade100,
            child: icon is Icon
                ? icon
                : SizedBox(
                    height: 30.0,
                    width: 30.0,
                    child: icon,
                  ),
            // O widget 'icon' é renderizado diretamente se for um Icon,
            // ou em um SizedBox se for outro tipo de widget (como SvgPicture)
          ),
          const SizedBox(height: 10.0),
          Text(
            label,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
