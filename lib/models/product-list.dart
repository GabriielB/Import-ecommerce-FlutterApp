import 'product.dart';

class ProductList{
  static List<Product> allProducts = [
    Product(
      id: 1,
      name: "Nintendo Switch OLED",
      price: 2000,
      image: 'assets/products/videogames/nintendo_switch.jpeg',
      descripton: "Nintendo Switch Oled com 64GB de Armazenamento Interno",
      category: "Console"
    ),
    Product(
      id: 2,
      name: "Playstation 5",
      price: 4000,
      image: 'assets/products/videogames/ps5.png',
      descripton: "Playstation 5 midia digital com 825GB de armazenamento",
      category: "Console"
    ),
    Product(
      id: 3,
      name: "Xbox Series X",
      price: 4000,
      image: 'assets/products/videogames/xbox_x.png',
      descripton: "Xbox Series X com 1TB de armazenamento",
      category: "Console"
    ),
    Product(
      id: 4,
      name: "Final Fantasy VII Ribirth",
      price: 200.00,
      image: 'assets/products/games/ff7.png',
      descripton: "Jogo Final Fantasy VII Ribirth para PS5",
      category: "Jogos"
    ),
    Product(
      id: 5,
      name: "The Legend of Zelda Breath of the Wild",
      price: 300.00,
      image: 'assets/products/games/zelda.png',
      descripton: "Jogo TLZBW para Nintendo Switch",
      category: "Jogos"
    ),
    Product(
      id: 6,
      name: "Forza 3",
      price: 100.00,
      image: 'assets/products/games/forza.png',
      descripton: "Jogo Forza 3 para Xbox",
      category: "Jogos"
    ),
  ];
  static List<Product> videoGamesList = [
    Product(
        id: 1,
        name: "Nintendo Switch OLED",
        price: 2000,
        image: 'assets/products/videogames/nintendo_switch.jpeg',
        descripton: "Nintendo Switch Oled com 64GB de Armazenamento Interno",
        category: "Console"
    ),
    Product(
        id: 2,
        name: "Playstation 5",
        price: 4000,
        image: 'assets/products/videogames/ps5.png',
        descripton: "Playstation 5 midia digital com 825GB de armazenamento",
        category: "Console"
    ),
    Product(
        id: 3,
        name: "Xbox Series X",
        price: 4000,
        image: 'assets/products/videogames/xbox_x.png',
        descripton: "Xbox Series X com 1TB de armazenamento",
        category: "Console"
    ),
  ];

  static List<Product> gamesList = [
    Product(
        id: 4,
        name: "Final Fantasy VII Ribirth",
        price: 200.00,
        image: 'assets/products/games/ff7.png',
        descripton: "Jogo Final Fantasy VII Ribirth para PS5",
        category: "Jogos"
    ),
    Product(
        id: 5,
        name: "The Legend of Zelda Breath of the Wild",
        price: 300.00,
        image: 'assets/products/games/zelda.png',
        descripton: "Jogo TLZBW para Nintendo Switch",
        category: "Jogos"
    ),
    Product(
        id: 6,
        name: "Forza 3",
        price: 100.00,
        image: 'assets/products/games/forza.png',
        descripton: "Jogo Forza 3 para Xbox",
        category: "Jogos"
    ),
  ];
}