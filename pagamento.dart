// import 'package:flutter/material.dart';

// class Pagamento extends StatefulWidget {
//   const Pagamento({super.key});

//   @override
//   State<Pagamento> createState() => _PagamentoState();
// }

// class _PagamentoState extends State<Pagamento> {
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         const Text('Método:',
//         style: TextStyle(
//           fontWeight: FontWeight.bold,
//         ),),
//         DropdownMenu<int>(
//           initialSelection: 1,
//           onSelected: (int? valor) {},
//           dropdownMenuEntries: const [
//           DropdownMenuEntry(label: 'Cartão de crédito', value: 1),
//           DropdownMenuEntry(label: 'Dinheiro', value: 2),
//           DropdownMenuEntry(label: 'PIX', value: 3),
//         ])
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';

class Pagamento extends StatefulWidget {
  const Pagamento({Key? key}) : super(key: key);

  @override
  State<Pagamento> createState() => _PagamentoState();
}

class _PagamentoState extends State<Pagamento> {
  String metodoSelecionado = '';

  void _mostrarAlerta(String metodo) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Método de pagamento selecionado'),
          content: Text('Você selecionou: $metodo'),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Método:',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        DropdownMenu<int>(
          initialSelection: 1,
          onSelected: (int? valor) {
            setState(() {
              switch (valor) {
                case 1:
                  metodoSelecionado = 'Cartão de crédito';
                  break;
                case 2:
                  metodoSelecionado = 'Dinheiro';
                  break;
                case 3:
                  metodoSelecionado = 'PIX';
                  break;
                default:
                  metodoSelecionado = '';
              }
            });
            _mostrarAlerta(metodoSelecionado);
          },
          dropdownMenuEntries: const [
            DropdownMenuEntry(label: 'Cartão de crédito', value: 1),
            DropdownMenuEntry(label: 'Dinheiro', value: 2),
            DropdownMenuEntry(label: 'PIX', value: 3),
          ],
        )
      ],
    );
  }
}
