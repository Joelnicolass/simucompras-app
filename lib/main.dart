import 'package:flutter/material.dart';

void main() {
  runApp(const SimuComprasApp());
}

class SimuComprasApp extends StatelessWidget {
  const SimuComprasApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SimuCompras',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFFFE600)),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SimuCompras')),
      body: const Center(
        child: Text(
          'Simulá la compra. Calmás el impulso.',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
