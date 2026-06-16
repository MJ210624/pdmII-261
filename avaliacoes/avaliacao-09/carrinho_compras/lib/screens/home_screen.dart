import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/produto.dart';
import '../providers/carrinho_provider.dart';
import 'carrinho_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final produtos = [
      Produto(nome: 'Notebook', preco: 3500),
      Produto(nome: 'Mouse', preco: 80),
      Produto(nome: 'Teclado', preco: 150),
      Produto(nome: 'Monitor', preco: 900),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Produtos'),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const CarrinhoScreen(),
                ),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: produtos.length,
        itemBuilder: (context, index) {
          final produto = produtos[index];

          return ListTile(
            title: Text(produto.nome),
            subtitle: Text(
              'R\$ ${produto.preco.toStringAsFixed(2)}',
            ),
            trailing: ElevatedButton(
              child: const Text('Adicionar'),
              onPressed: () {
                context
                    .read<CarrinhoProvider>()
                    .adicionarProduto(produto);

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      '${produto.nome} adicionado!',
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}