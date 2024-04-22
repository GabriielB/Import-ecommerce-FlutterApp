import 'package:al_imports/models/product_list.dart';
import 'package:al_imports/screens/product_details/product_details.dart';
import 'package:al_imports/widgets/product_container.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/loggedInUser.dart';

class ListProductsPage extends StatefulWidget {
  const ListProductsPage({super.key});

  @override
  State<ListProductsPage> createState() => _ListProductsPageState();
}

class _ListProductsPageState extends State<ListProductsPage> {
  int isSelected = 0;

  buildProductCategory({required int index, required String name}) =>
      GestureDetector(
        onTap: () => setState(() => isSelected = index),
        child: Container(
          width: 100,
          height: 40,
          margin: EdgeInsets.only(top: 10, right: 10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: isSelected == index
                  ? Color.fromRGBO(51, 102, 102, 1)
                  : Color.fromRGBO(51, 102, 102, 0.7)),
          child: Text(
            name,
            style: TextStyle(color: Colors.white),
          ),
        ),
      );

  buildAllProducts() => GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: (100 / 140),
            crossAxisSpacing: 12,
            mainAxisSpacing: 12),
        scrollDirection: Axis.vertical,
        itemCount: ProductList.allProducts.length,
        itemBuilder: (context, index) {
          final allProducts = ProductList.allProducts[index];
          return GestureDetector(
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ProductDetailsPage(product: allProducts))),
            child: ProductContainer(
              product: allProducts,
            ),
          );
        },
      );

  buildGames() => GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: (100 / 140),
            crossAxisSpacing: 12,
            mainAxisSpacing: 12),
        scrollDirection: Axis.vertical,
        itemCount: ProductList.gamesList.length,
        itemBuilder: (context, index) {
          final gamesList = ProductList.gamesList[index];
          return GestureDetector(
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ProductDetailsPage(product: gamesList))),
            child: ProductContainer(
              product: gamesList,
            ),
          );
        },
      );

  buildVideoGames() => GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: (100 / 140),
            crossAxisSpacing: 12,
            mainAxisSpacing: 12),
        scrollDirection: Axis.vertical,
        itemCount: ProductList.videoGamesList.length,
        itemBuilder: (context, index) {
          final videoGamesList = ProductList.videoGamesList[index];
          return GestureDetector(
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ProductDetailsPage(product: videoGamesList))),
            child: ProductContainer(
              product: videoGamesList,
            ),
          );
        },
      );

  @override
  Widget build(BuildContext context) {
    var loggedInUser = Provider.of<LoggedInUser>(context);
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Olá ${loggedInUser.username}!",
            style: TextStyle(
                color: Color.fromRGBO(51, 102, 102, 1),
                fontWeight: FontWeight.bold,
                fontSize: 26),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildProductCategory(index: 0, name: "Todos"),
                  buildProductCategory(index: 1, name: "Jogos"),
                  buildProductCategory(index: 2, name: "Consoles")
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: isSelected == 0
              ? buildAllProducts()
            : isSelected == 1
        ? buildGames()
        : buildVideoGames(),
          )
        ],
      ),
    );
  }
}
