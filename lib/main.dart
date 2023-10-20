import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _alturaController = TextEditingController();

  final _pesoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora IMC'),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/image/imc_logo2.jpg'),
                SizedBox(
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                            controller: _pesoController,
                            decoration: InputDecoration(
                                labelText: 'Peso',
                                hintText: 'Informe o seu peso',
                                suffixStyle: const TextStyle(fontSize: 20),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30)

                                )

                            )),
                      ),
                      Expanded(
                        child: TextField(
                          controller: _alturaController,
                          decoration: InputDecoration(
                            labelText: 'Altura',
                            hintText: 'Informe a sua altura',
                            suffixStyle: const TextStyle(fontSize: 20),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30)
                            )

                          ),
                        ),
                      ),
                    ],
                  ),
                ),
            ]),

          ),
        ),
      ),
    );
  }
}
