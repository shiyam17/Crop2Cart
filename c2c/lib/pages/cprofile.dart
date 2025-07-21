import 'package:c2c/pages/Rhome.dart';
import 'package:c2c/pages/cart.dart';
import 'package:flutter/material.dart';
// Import the CartScreen widget

class CProfilePage extends StatelessWidget {
  const CProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.black),
          onPressed: () {
            // Handle menu button press
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.home, color: Colors.black),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Rhome()));
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: const Color.fromARGB(255, 0, 0, 0)),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite, color: Colors.black54),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart, color: Colors.black54),
            label: '',
          ),
        ],
        currentIndex: 0, // Set the active tab (index of selected tab)
        selectedItemColor: const Color.fromARGB(255, 0, 0, 0),
        onTap: (index) {
          if (index == 0) {
            // Home tab
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Rhome()),
            );
          } else if (index == 2) {
            // Shopping Cart tab
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      CartScreen()), // Navigate to CartScreen from buy.dart
            );
          }
          // Handle other tabs if necessary
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.grey.shade300,
                  child: Icon(Icons.person, size: 40, color: Colors.black),
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Senapathy',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Owns a Retail shop at Polachi',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.yellow),
                        Icon(Icons.star, color: Colors.yellow),
                        Icon(Icons.star, color: Colors.yellow),
                        Icon(Icons.star, color: Colors.yellow),
                        Icon(Icons.star_border, color: Colors.yellow),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 64),
            Text(
              'About',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 15),
            Container(
              padding: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                'Senapathy has 10 years of experience in selling products. He also sells a variety of crops like sweet potatoes.',
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 66),
            Row(
              children: [
                Icon(Icons.shopping_cart, size: 100),
                SizedBox(width: 26),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      'Senapathy owns this retail shop at Polachi and has successfully grown crops for the past 10 years.',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
