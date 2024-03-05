import 'package:flutter/material.dart';

class ProductsPage extends StatefulWidget {
  final String username;
  const ProductsPage({Key? key, required this.username}) : super(key: key);

  @override
  State<ProductsPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ProductsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("SEJA BEM VINDO, ${widget.username.toUpperCase()}!"),
      ),
    );
  }
}
