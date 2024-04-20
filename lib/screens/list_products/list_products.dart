import 'package:flutter/material.dart';

class ListProductsPage extends StatefulWidget {
  const ListProductsPage({super.key});

  @override
  State<ListProductsPage> createState() => _ListProductsPageState();
}

class _ListProductsPageState extends State<ListProductsPage> {

  int isSelected = 0;


  buildProductCategory({required int index, required String name}) => Container(
    width: 100,
    height: 40,
    margin: EdgeInsets.only(top: 10, right: 10),
    alignment: Alignment.center,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: isSelected == index ? Color.fromRGBO(51, 102, 102, 1): Color.fromRGBO(51, 102, 102, 0.7)
    ),
    child: Text(name, style: TextStyle(color: Colors.white),),
  );


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Olá Usuario!",
            style: TextStyle(
                color: Color.fromRGBO(51, 102, 102, 1),
                fontWeight: FontWeight.bold,
                fontSize: 26),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildProductCategory(index: 0, name: "Todos"),
                buildProductCategory(index: 1, name: "Jogos"),
                buildProductCategory(index: 2, name: "Consoles")
              ],
            ),
          ),

        ],
      ),
    );
  }

}
