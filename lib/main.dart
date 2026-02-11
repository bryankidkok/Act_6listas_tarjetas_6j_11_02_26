
import 'package:flutter/material.dart';

void main() => runApp(const AppAeropuerto());

class AppAeropuerto extends StatelessWidget {
  const AppAeropuerto({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Aviones(),
    );
  }
}

class Aviones extends StatelessWidget {
  const Aviones({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Aeropuerto',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        leading: const Icon(
          Icons.flight_takeoff, // Icono de avión en leading
          color: Colors.white,
        ),
        actions: const [
          Icon(
            Icons.airplanemode_active, // Icono de aviones
            color: Colors.white,
          ),
          SizedBox(width: 15), // Espaciado entre iconos
          Icon(
            Icons.home, // Icono de casa
            color: Colors.white,
          ),
          SizedBox(width: 15), // Espaciado al final
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          // Tarjeta 1: Salidas Internacionales
          Card(
            color: Colors.green.shade100,
            child: ListTile(
              leading: Image.network('https://images.unsplash.com/photo-1530521954074-e64f6810b32d?q=80&w=150'),
              title: const Text('Salidas Internacionales', style: TextStyle(color: Colors.red)),
              subtitle: const Text('Consulta tu puerta de embarque y horarios.'),
              trailing: const Icon(Icons.airplanemode_active),
            ),
          ),
          // Tarjeta 2: Servicios VIP
          Card(
            color: Colors.green.shade100,
            child: ListTile(
              leading: Image.network('https://images.unsplash.com/photo-1569154941061-e231b4725ef1?q=80&w=150'),
              title: const Text('Salas Lounge VIP', style: TextStyle(color: Colors.red)),
              subtitle: const Text('Relájate antes de tu vuelo con total comodidad.'),
              trailing: const Icon(Icons.airplanemode_active),
            ),
          ),
          // Tarjeta 3: Seguridad y Equipaje
          Card(
            color: Colors.green.shade100,
            child: ListTile(
              leading: Image.network('https://images.unsplash.com/photo-1581009137042-c552e485697a?q=80&w=150'),
              title: const Text('Control de Seguridad', style: TextStyle(color: Colors.red)),
              subtitle: const Text('Revisa los objetos permitidos en tu equipaje.'),
              trailing: const Icon(Icons.airplanemode_active),
            ),
          ),
        ],
      ),
    );
  }
}
