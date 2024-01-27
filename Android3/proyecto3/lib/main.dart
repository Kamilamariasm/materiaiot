import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Proyecto #3',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyan),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Identificacion'),
    );
  }
}


class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/tu_imagen.jpg',
              width: 150,
              height: 150,
            ),
            const Text(
              'Texto 1',
              style: TextStyle(fontSize: 18),
            ),
            const Text(
              'Texto 2',
              style: TextStyle(fontSize: 18),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    // Lógica del primer botón
                  },
                  child: const Text('Botón 1'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Lógica del segundo botón
                  },
                  child: const Text('Botón 2'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}