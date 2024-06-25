import 'package:flutter/material.dart';
import 'package:flutter_abas/cep.dart';
import 'package:flutter_abas/pagamento.dart';
import 'package:flutter_abas/tabela.dart';

/// Flutter code sample for [TabBar].

void main() => runApp(const TabBarApp());

class TabBarApp extends StatelessWidget {
  const TabBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const TabBarExample(),
    );
  }
}

class TabBarExample extends StatelessWidget {
  const TabBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TabBar Sample'),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                // Produtos
                icon: Icon(Icons.shopping_cart),
                text: "Prdutos",
              ),
              Tab(
                // Endereço
                icon: Icon(Icons.location_city),
                text: "Endereço",
              ),
              Tab(
                // Pagamento
                icon: Icon(Icons.payment),
                text: "Pagamento",
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            Center(
              // Produtos
              child: Tabela(),
            ),
            Center(
              // CEP
              child: CEP(),
            ),
            Center(
              // Pagamento
              child: Pagamento(),
            ),
          ],
        ),
      ),
    );
  }
}
