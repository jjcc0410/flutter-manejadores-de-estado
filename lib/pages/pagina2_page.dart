import 'package:flutter/material.dart';

class Pagina2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina 2'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(
              color: Colors.blue,
              onPressed: () {},
              child: const Text(
                'Establecer Usuario',
                style: TextStyle(color: Colors.white),
              )),
          MaterialButton(
              color: Colors.blue,
              onPressed: () {},
              child: const Text(
                'Cambiar Edad',
                style: TextStyle(color: Colors.white),
              )),
          MaterialButton(
              color: Colors.blue,
              onPressed: () {},
              child: const Text(
                'Añadir Profesión',
                style: TextStyle(color: Colors.white),
              )),
        ],
      )),
    );
  }
}
