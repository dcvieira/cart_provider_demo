import 'package:flutter/material.dart';

class CarrinhoTotal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('BUILD: CarrinhoTotal');

    return SizedBox(
      height: 200,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'R\$${100}',
              style: const TextStyle(fontSize: 48, fontWeight: FontWeight.w300),
            ),
            const SizedBox(width: 24),
            TextButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Compra finalizada!')));
              },
              //style: TextButton.styleFrom(foregroundColor: Colors.white),
              child: const Text('COMPRAR'),
            ),
          ],
        ),
      ),
    );
  }
}
