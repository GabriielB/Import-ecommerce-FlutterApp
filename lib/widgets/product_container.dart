import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductContainer extends StatefulWidget {
  const ProductContainer({super.key, required this.product});

  final Product product;

  @override
  State<ProductContainer> createState() => _ProductContainerState();
}

class _ProductContainerState extends State<ProductContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.grey.withOpacity(0.1),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                Icons.add_shopping_cart_rounded,
                color: Color.fromRGBO(51, 102, 102, 1),
              )
            ],
          ),
          SizedBox(
            height: 100,
            width: 100,
            child: Image.asset(
              widget.product.image,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            widget.product.name,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(
            widget.product.category,
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(51, 102, 102, 1)),
          ),
          Text(
            "R\$ ${widget.product.price}",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
