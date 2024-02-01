import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ThridScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    int currentDayOfWeek = now.weekday;

    String dayName = DateFormat('EEEE').format(now);

    String getLuckyColor(int dayOfWeek) {
      switch (dayOfWeek) {
        case 1:
          return 'Purple';
        case 2:
          return 'Orange';
        case 3:
          return 'White';
        case 4:
          return 'Red';
        case 5:
          return 'Pink';
        case 6:
          return 'Blue';
        case 7:
          return 'Green';
        default:
          return 'Unknown';
      }
    }

    String luckyColor = getLuckyColor(currentDayOfWeek);

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Today is $dayName',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              'Lucky Color for Today:',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Container(
              width: 100,
              height: 100,
              color: _getColorByName(luckyColor),
            ),
          ],
        ),
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
        currentIndex: 2,
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

  Color _getColorByName(String colorName) {
    switch (colorName.toLowerCase()) {
      case 'purple':
        return Colors.purple;
      case 'orange':
        return Colors.orange;
      case 'white':
        return Colors.white;
      case 'red':
        return Colors.red;
      case 'pink':
        return Colors.pink;
      case 'blue':
        return Colors.blue;
      case 'green':
        return Colors.green;
      default:
        return Colors.black;
    }
  }
}
