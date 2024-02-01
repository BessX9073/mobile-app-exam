import 'package:flutter/material.dart';


class ManScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('KUniqlo'),
        backgroundColor: Color.fromRGBO(83, 151, 193, 1),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Text('Man'),
          const Expanded(
            child: MenuGrid(),
          ),
        ],
      ),
    );
  }
}
class MenuGrid extends StatelessWidget {
  const MenuGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: const <Widget>[
          ProductCard(
            image: "assets/images/product/product101.png",
            name: "Short Sleeve T-Shirt,",
            dis: "THB 790",
          ),
          ProductCard(
            image: "assets/images/product/product102.png",
            name: "Short Sleeve T-Shirt,",
            dis: "THB 790",
          ),
          ProductCard(
            image: "assets/images/product/product103.png",
            name: "Short Sleeve T-Shirt,",
            dis: "THB 790",
          ),
          ProductCard(
            image: "assets/images/product/product104.png",
            name: "Short Sleeve T-Shirt,",
            dis: "THB 790",
          ),
          ProductCard(
            image: "assets/images/product/product105.png",
            name: "Short Sleeve T-Shirt,",
            dis: "THB 790",
          ),
          ProductCard(
            image: "assets/images/product/product106.png",
            name: "Short Sleeve T-Shirt,",
            dis: "THB 790",
          ),
          ProductCard(
            image: "assets/images/product/product107.png",
            name: "Short Sleeve T-Shirt,",
            dis: "THB 790",
          ),
          ProductCard(
            image: "assets/images/product/product108.png",
            name: "Short Sleeve T-Shirt,",
            dis: "THB 790",
          ),
          ProductCard(
            image: "assets/images/product/product109.png",
            name: "Short Sleeve T-Shirt,",
            dis: "THB 790",
          ),
          ProductCard(
            image: "assets/images/product/product110.png",
            name: "Short Sleeve T-Shirt,",
            dis: "THB 790",
          ),
        ],
      ),
    );
  }
}
class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key, 
    required this.image, 
    required this.name,
    required this.dis}) : super(key: key);

  final String image;
  final String name;
  final String dis;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[900],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Image.asset("assets/images/" + image, 
                      height: 120, width: 120),  
          Text(name,
               style: const TextStyle(
               color: Colors.white,
               fontSize: 20
               ),),
          Text(dis,
               style: const TextStyle(
               color: Colors.white
               ),)
        ],
    ));
  }
}