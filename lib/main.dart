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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget  build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Pagina Principal'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Ir a segunda pantalla'),
          onPressed: () {
            // Función para ir a la segunda página
            Navigator.push(context, 
                MaterialPageRoute(builder: (context) => const SecondPage()));
          },
        ),
      )
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget  build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Segunda página'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Regresar'),
          onPressed: () {
            // Función para regresar a la página principal
            Navigator.pop(context);
          },
        ),
      )
    );
  }
}