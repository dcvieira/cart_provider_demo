import 'package:cart_provider_demo/models/carrinho.dart';
import 'package:cart_provider_demo/models/catalogo.dart';
import 'package:cart_provider_demo/pages/catalogo/catalogo-item.dart';
import 'package:flutter/material.dart';

import 'catalogo-appbar.dart';

class CatalogoPage extends StatefulWidget {
  const CatalogoPage({Key? key}) : super(key: key);

  @override
  State<CatalogoPage> createState() => _CatalogoPageState();
}

class _CatalogoPageState extends State<CatalogoPage> {
  final CarrinhoModel carrinho = CarrinhoModel();

  @override
  Widget build(BuildContext context) {
    print('BUILD: CatalogoPage');

    return Scaffold(
      appBar: CatalogoAppBar(carrinho: carrinho),
      body: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: .63,
          padding: const EdgeInsets.all(10),
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 10,
          children: CatalogoModel.items.map((Item item) {
            return CatalogoItem(
              item: item,
              onAddItem: _addItem,
              carrinho: carrinho,
            );
          }).toList()),
    );
  }

  void _addItem(Item item) {
    setState(() {
      carrinho.add(item);
    });
  }
}
