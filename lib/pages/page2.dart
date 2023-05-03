import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_counter/providers/counter_provider.dart';

import '../providers/counter_provider.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  bool _mostrarImagen = false;
  TextEditingController numero1Controller = TextEditingController();
  TextEditingController numero2Controller = TextEditingController();
  String resultado = 'soy una suma';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: numero1Controller,
              decoration: const InputDecoration(
                labelText: 'Número 1:',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: numero2Controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Número 2:',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: () {
              _mostrarImagen = !_mostrarImagen;
              String numero1 = numero1Controller.text.toString();
              String numero2 = numero2Controller.text.toString();
              context.read<SumaMaster>().Sumar(numero1, numero2);
            },
            child: const Text('Calcular suma'),
          ),
          const SizedBox(height: 16.0),
          Text(
            'La respuesta es: ${context.watch<SumaMaster>().resultado}',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeOut,
            height: _mostrarImagen ? 600 : 0,
            child: Image.network(
              'https://media.tenor.com/CgGUXc-LDc4AAAAM/hacker-pc.gif',
              height: 800,
              width: 800,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
