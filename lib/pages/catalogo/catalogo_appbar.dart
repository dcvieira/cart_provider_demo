import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../models/carrinho.dart';

class CatalogoAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    print('BUILD: CatalogoAppBar');

    final carrinho = Provider.of<CarrinhoModel>(context);
    return AppBar(
      title: const Text('Catalogo'),
      actions: [
        IconButton(
          icon: Badge(
            label: Text(
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
