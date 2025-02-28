import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Alexis espino sanchez matrticula:1062"),
          backgroundColor: Colors.blue,
          centerTitle: true,
           titleTextStyle: const TextStyle(
            color: Colors.white, // Aseguramos que el texto sea blanco para contrastar
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconWithSubtitle(icon: Icons.home, subtitle: 'Inicio', iconColor: Colors.blue, subtitleColor: Colors.red),
              IconWithSubtitle(icon: Icons.delete, subtitle: 'delete', iconColor: Colors.green, subtitleColor: Colors.orange),
              IconWithSubtitle(icon: Icons.add, subtitle: 'agregar', iconColor: Colors.purple, subtitleColor: Colors.yellow),
              IconWithSubtitle(icon: Icons.account_circle, subtitle: 'Perfil', iconColor: Colors.pink, subtitleColor: Colors.teal),
              IconWithSubtitle(icon: Icons.info, subtitle: 'Información', iconColor: Colors.cyan, subtitleColor: Colors.indigo),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Inicio',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Buscar',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Configuración',
            ),
          ],
          onTap: (int index) {
            // Lógica de navegación
          },
        ),
      ),
    );
  }
}

class IconWithSubtitle extends StatelessWidget {
  final IconData icon;
  final String subtitle;
  final Color iconColor;
  final Color subtitleColor;

  IconWithSubtitle({required this.icon, required this.subtitle, required this.iconColor, required this.subtitleColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: iconColor, size: 50),
        SizedBox(height: 8),
        Text(subtitle, style: TextStyle(color: subtitleColor, fontSize: 16)),
        SizedBox(height: 20), // Espacio entre los íconos
      ],
    );
  }
}
