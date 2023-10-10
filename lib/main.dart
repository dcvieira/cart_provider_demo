import 'package:cart_provider_demo/models/carrinho.dart';
import 'package:cart_provider_demo/pages/carrinho/carrinho_page.dart';
import 'package:cart_provider_demo/pages/catalogo/catalogo_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CarrinhoModel(),
      builder: (context, _) {
        return MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.deepPurple,
          ),
          initialRoute: '/',
          routes: {
            '/': (context) => const CatalogoPage(),
            '/carrinho': (context) => const CarrinhoPage(),
          },
        );
      },
    );
  }
}
