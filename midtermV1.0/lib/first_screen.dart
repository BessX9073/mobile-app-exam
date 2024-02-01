import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
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
        children: [
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/woman_page');
                  },
                  child: Image.asset('assets/images/img_1.png'),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/man_page');
                  },
                  child: Image.asset('assets/images/img_2.png'),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/kid_page');
                  },
                  child: Image.asset('assets/images/img_3.png'),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'HOME',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'WISH LIST',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'LUCKY COLOR',
          ),
        ],
        currentIndex: 0,
        selectedItemColor: Color.fromRGBO(69, 123, 157, 1),
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.pushNamed(context, '/');
              break;
            case 1:
              Navigator.pushNamed(context, '/second');
              break;
            case 2:
              Navigator.pushNamed(context, '/thrid');
              break;
          }
        },
      ),
    );
  }
}
