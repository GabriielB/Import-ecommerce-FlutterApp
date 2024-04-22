import 'package:al_imports/screens/pay/pay.dart';
import 'package:flutter/material.dart';
import '../../providers/cart_provider.dart';

class ShoppingCart extends StatelessWidget {
  const ShoppingCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = CartProvider.of(context);
    final cartList = provider.cart;
    double totalPrice = cartList.fold(
        0, (previousValue, element) => previousValue + element.price);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          const Padding(
            padding: const EdgeInsets.only(top: 20, left: 20),
            child: Text(
              "Carrinho",
              style: TextStyle(
                  color: Color.fromRGBO(51, 102, 102, 1),
                  fontWeight: FontWeight.bold,
                  fontSize: 26),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: cartList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8),
                  child: ListTile(
                    title: Text(
                      cartList[index].name,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      cartList[index].descripton,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(color: Colors.white),
                    ),
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(cartList[index].image),
                    ),
                    trailing: Text(
                      "R\$ ${cartList[index].price}",
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    tileColor: Color.fromRGBO(51, 102, 102, 1),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Container(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Color.fromRGBO(51, 102, 102, 1)),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => PayPage(totalPrice: totalPrice)));
                    },
                    child: Text(
                      'Pagar: R\$ $totalPrice',
                      style: const TextStyle(color: Colors.white),
                    ))),
          )
        ],
      ),
    );
  }
}
