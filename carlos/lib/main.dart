import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int contador = 10;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MI APP',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blue[900],
          title: const Text(
            'Operaciones Matematicas',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontFamily: 'Times New Roman',
            ),
          ),
        ),
        body: Container(
          color: Color.fromARGB(255, 126, 126, 126), // color de fondo del body
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Valor del contador:',
                      style: TextStyle(
                        fontSize: 44,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      '$contador',
                      style: const TextStyle(
                        fontSize: 58,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton(
                backgroundColor: Colors.red.withOpacity(1.0),
                onPressed: sumar,
                child: const Icon(Icons.add),
              ),
              FloatingActionButton(
                backgroundColor: Colors.red.withOpacity(0.9),
                onPressed: restar,
                child: const Icon(Icons.remove),
              ),
              FloatingActionButton(
                backgroundColor: Colors.red.withOpacity(0.8),
                onPressed: multiplicar,
                child: const Icon(Icons.clear),
              ),
              FloatingActionButton(
                backgroundColor: Colors.red.withOpacity(0.7),
                onPressed: dividir,
                child: const Text("/", style: TextStyle(fontSize: 24)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void sumar() {
    setState(() {
      contador += 2;
    });
  }

  void restar() {
    setState(() {
      contador -= 2;
    });
  }

  void multiplicar() {
    setState(() {
      contador *= 2;
    });
  }

  void dividir() {
    setState(() {
      contador ~/= 2;
    });
  }
}
