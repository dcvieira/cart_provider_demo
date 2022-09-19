import 'package:badges/badges.dart';
import 'package:cart_provider_demo/models/carrinho.dart';
import 'package:flutter/material.dart';

class CatalogoAppBar extends StatelessWidget implements PreferredSizeWidget {
  final CarrinhoModel carrinho;

  const CatalogoAppBar({required this.carrinho});

  @override
  Widget build(BuildContext context) {
    print('BUILD: CatalogoAppBar');

    return AppBar(
      title: const Text('Catalogo'),
      actions: [
        IconButton(
          icon: Badge(
            badgeContent: Text(
              '${carrinho.items.length}',
              style: TextStyle(color: Colors.white),
            ),
            child: const Icon(
              Icons.shopping_cart,
            ),
          ),
          onPressed: () => Navigator.pushNamed(context, '/carrinho'),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60.0);
}
