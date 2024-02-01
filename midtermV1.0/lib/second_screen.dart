import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('KUniqlo'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {               
                Navigator.pop(context);
              },
              child: const Text('Go to First Screen'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/thrid');
              }, 
              child: const Text('Go to Thrid Screen'))
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'First',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Second',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Thrid',
          ),
        ],
        currentIndex: 1, 
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
