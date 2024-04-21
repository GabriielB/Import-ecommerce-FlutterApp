import 'product.dart';

class ProductList{
  static List<Product> allProducts = [
    Product(
      id: 1,
      name: "Nintendo Switch",
      price: 2000,
      image: 'lib/assets/products/videogames/nintendo_switch.png',
      descripton: "Nintendo Switch Oled com 64GB de Armazenamento Interno",
      category: "Console"
    ),
    Product(
      id: 2,
      name: "Playstation 5",
      price: 4000,
      image: 'lib/assets/products/videogames/ps5.png',
      descripton: "Playstation 5 midia digital com 825GB de armazenamento",
      category: "Console"
    ),
    Product(
      id: 3,
      name: "Xbox Series X",
      price: 4000,
      image: 'lib/assets/products/videogames/xbox_x.png',
      descripton: "Xbox Series X com 1TB de armazenamento",
      category: "Console"
    ),
    Product(
      id: 4,
      name: "FF VII Ribirth",
      price: 200.00,
      image: 'lib/assets/products/games/ff7.jpg',
      descripton: "Jogo Final Fantasy VII Ribirth para PS5",
      category: "Jogos"
    ),
    Product(
      id: 5,
      name: "Zelda BOTW",
      price: 300.00,
      image: 'lib/assets/products/games/zelda.jpg',
      descripton: "Jogo TLZBW para Nintendo Switch",
      category: "Jogos"
    ),
    Product(
      id: 6,
      name: "Forza Horizon",
      price: 100.00,
      image: 'lib/assets/products/games/forza.jpeg',
      descripton: "Jogo Forza para Xbox",
      category: "Jogos"
    ),
  ];
  static List<Product> videoGamesList = [
    Product(
        id: 1,
        name: "Nintendo Switch",
        price: 2000,
        image: 'lib/assets/products/videogames/nintendo_switch.png',
        descripton: "Nintendo Switch Oled com 64GB de Armazenamento Interno",
        category: "Console"
    ),
    Product(
        id: 2,
        name: "Playstation 5",
        price: 4000,
        image: 'lib/assets/products/videogames/ps5.png',
        descripton: "Playstation 5 midia digital com 825GB de armazenamento",
        category: "Console"
    ),
    Product(
        id: 3,
        name: "Xbox Series X",
        price: 4000,
        image: 'lib/assets/products/videogames/xbox_x.png',
        descripton: "Xbox Series X com 1TB de armazenamento",
        category: "Console"
    ),
  ];

  static List<Product> gamesList = [
    Product(
        id: 4,
        name: "FF VII Ribirth",
        price: 200.00,
        image: 'lib/assets/products/games/ff7.jpg',
        descripton: "Jogo Final Fantasy VII Ribirth para PS5",
        category: "Jogos"
    ),
    Product(
        id: 5,
        name: "Zelda BOTW",
        price: 300.00,
        image: 'lib/assets/products/games/zelda.jpg',
        descripton: "Jogo TLZBW para Nintendo Switch",
        category: "Jogos"
    ),
    Product(
        id: 6,
        name: "Forza Horizon",
        price: 100.00,
        image: 'lib/assets/products/games/forza.jpeg',
        descripton: "Jogo Forza para Xbox",
        category: "Jogos"
    ),
  ];
}