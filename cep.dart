import 'package:flutter/material.dart';

class CEP extends StatefulWidget {
  const CEP({super.key});

  @override
  State<CEP> createState() => _CEPState();
}

class _CEPState extends State<CEP> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        // Exemplo de como organizar cada par Text + SizedBox em uma Row
        Row(
          children: [
            Text('Rua:'),
            SizedBox(
              width: 10, // Ajuste o tamanho do SizedBox conforme necessário
            ),
            SizedBox(
              width: 150,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Text('Numero:'),
            SizedBox(
              width: 10, // Ajuste o tamanho do SizedBox conforme necessário
            ),
            SizedBox(
              width: 150,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Text('Bairro:'),
            SizedBox(
              width: 10, // Ajuste o tamanho do SizedBox conforme necessário
            ),
            SizedBox(
              width: 150,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Text('Cidade:'),
            SizedBox(
              width: 10, // Ajuste o tamanho do SizedBox conforme necessário
            ),
            SizedBox(
              width: 150,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Text('Estado:'),
            SizedBox(
              width: 10, // Ajuste o tamanho do SizedBox conforme necessário
            ),
            SizedBox(
              width: 150,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Text('CEP:'),
            SizedBox(
              width: 10, // Ajuste o tamanho do SizedBox conforme necessário
            ),
            SizedBox(
              width: 150,
              child: TextField(
                decoration: InputDecoration(
                  hintText: '99999-999',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
