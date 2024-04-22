import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/product.dart';

class CartProvider extends ChangeNotifier {
  final List<Product> _cart = [];
  List<Product> get cart => _cart;

  void toogleProduct(Product product) {

    if(_cart.contains(product)){
      _cart.remove(product);
    } else {
      _cart.add(product);
    }
    notifyListeners();
  }

  bool isExist(Product product){
    final isExist = _cart.contains(product);
    return isExist;
  }

   static CartProvider of(
       BuildContext context, {
         bool listen = true,
  }) {
    return Provider.of<CartProvider>(context, listen: listen);
   }

}