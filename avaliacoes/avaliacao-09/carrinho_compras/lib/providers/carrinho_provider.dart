import 'package:flutter/material.dart';
import '../models/produto.dart';

class CarrinhoProvider extends ChangeNotifier {
  final List<Produto> _itens = [];

  List<Produto> get itens => _itens;

  void adicionarProduto(Produto produto) {
    _itens.add(produto);
    notifyListeners();
  }

  void removerProduto(Produto produto) {
    _itens.remove(produto);
    notifyListeners();
  }

  double get total {
    return _itens.fold(
      0,
      (soma, produto) => soma + produto.preco,
    );
  }
}
