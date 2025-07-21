
import 'package:c2c/pages/Rprofile.dart';
import 'package:c2c/pages/cart.dart';
import 'package:flutter/material.dart';
import 'package:c2c/pages/onion.dart';
import 'package:c2c/pages/langset.dart'; // Ensure this is the correct import path for language settings


class Rhome extends StatelessWidget {
  const Rhome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: Icon(Icons.menu, color: Colors.black),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        title: Text(
          'Crop2Cart',
          style: TextStyle(
            color: Colors.green,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.account_circle, color: Colors.black),
            onPressed: () {
              // Navigate to Profile
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Rprofile()), // Ensure ProfilePage is defined
              );
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Rhome()));
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text('Cart'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => CartScreen()));
              },
            ),
            ListTile(
              leading: Icon(Icons.language),
              title: Text('Language Settings'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => LanguageSelectionScreen()));
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () {
                // Implement logout functionality here
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Search Bar
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.search),
                  hintText: 'Search',
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 24),

            // Vegetables Section
            Text(
              'Vegetables',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),

            // Horizontally Scrollable Row for Vegetables
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  buildCategoryCard(context, 'Tomato', 'assets/icons/tomato.png', Colors.red.shade400, TomatoPage()),
                  SizedBox(width: 16),
                  buildCategoryCard(context, 'Onion', 'assets/icons/onion.png', Colors.purple.shade200, OnionPage()),
                  SizedBox(width: 16),
                  buildCategoryCard(context, 'Potato', 'assets/icons/potato.png', Colors.brown.shade300, PotatoPage()),
                ],
              ),
            ),
            SizedBox(height: 24),

            // Grocery Section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Grocery',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                InkWell(
                  onTap: () {
                    // Navigate to more items
                  },
                  child: Row(
                    children: [
                      Text(
                        'See more',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 16,
                        ),
                      ),
                      Icon(Icons.arrow_forward, color: Colors.black54),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),

            // Horizontally Scrollable Row for Grocery
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  buildCategoryCard(context, 'Rice', 'assets/icons/rice.jpeg', Colors.grey.shade200, RicePage()),
                  SizedBox(width: 16),
                  buildCategoryCard(context, 'Wheat', 'assets/icons/wheat.png', Colors.brown.shade200, WheatPage()),
                  //SizedBox(width: 16),
                  //buildCategoryCard(context, 'Sugar', 'assets/images/sugar.png', Colors.grey.shade200, RicePage()),
                  //SizedBox(width: 16),
                  //buildCategoryCard(context, 'Salt', 'assets/images/salt.png', Colors.grey.shade200, RicePage()),
                  SizedBox(width: 16),
                  buildCategoryCard(context, 'Pulses', 'assets/icons/pulses.png', Colors.grey.shade200, RicePage()),
                ],
              ),
            ),
          ],
        ),
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
          if (index == 0) { // Home tab
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Rhome()),
            );
          } else if (index == 2) { // Shopping Cart tab
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CartScreen()), // Navigate to CartScreen from buy.dart
            );
          }
          // Handle other tabs if necessary
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );
  }

  Widget buildCategoryCard(BuildContext context, String title, String imagePath, Color backgroundColor, Widget nextPage) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => nextPage),
        );
      },
      child: Container(
        width: 100,
        height: 140,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage(imagePath),
            ),
            SizedBox(height: 8),
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

// Dummy pages for demonstration
class TomatoPage extends StatelessWidget {
  const TomatoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tomato')),
      body: Center(child: Text('Details about Tomato')),
    );
  }
}


class PotatoPage extends StatelessWidget {
  const PotatoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Potato')),
      body: Center(child: Text('Details about Potato')),
    );
  }
}

class RicePage extends StatelessWidget {
  const RicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Rice')),
      body: Center(child: Text('Details about Rice')),
    );
  }
}

class WheatPage extends StatelessWidget {
  const WheatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Wheat')),
      body: Center(child: Text('Details about Wheat')),
    );
  }
}

// Dummy Settings page for demonstration
class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Settings')),
      body: Center(child: Text('Settings Page')),
    );
  }
}

// Dummy Profile page for demonstration
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile')),
      body: Center(child: Text('Profile Page')),
    );
  }
}
