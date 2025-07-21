// import 'package:flutter/material.dart';

// class onionpage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         leading: IconButton(
//           icon: Icon(Icons.menu, color: Colors.black),
//           onPressed: () {
//             Scaffold.of(context).openDrawer();
//           },
//         ),
//         title: Text(
//           'Product display',
//           style: TextStyle(
//             color: Colors.black,
//             fontWeight: FontWeight.bold,
//             fontSize: 24,
//           ),
//         ),
//         centerTitle: true,
//         actions: [
//           IconButton(
//             icon: Icon(Icons.account_circle, color: Colors.black),
//             onPressed: () {
//               // Navigate to Profile
//             },
//           ),
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Product Image
//             Center(
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(16.0),
//                 child: Image.asset(
//                   'assets/icons/Logo.png', // Replace with your image path
//                   height: 200,
//                   width: 200,
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//             SizedBox(height: 16),
            
//             // Product Name and Price
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   'Onions',
//                   style: TextStyle(
//                     fontSize: 24,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 Row(
//                   children: [
//                     Container(
//                       padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
//                       decoration: BoxDecoration(
//                         color: Colors.grey.shade300,
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                       child: Text(
//                         'Rs.30/kg',
//                         style: TextStyle(
//                           fontSize: 16,
//                           fontWeight: FontWeight.w500,
//                         ),
//                       ),
//                     ),
//                     SizedBox(width: 8),
//                     ElevatedButton(
//                       onPressed: () {
//                         // Add to cart functionality
//                       },
//                       style: ElevatedButton.styleFrom(
//                         foregroundColor: Colors.grey.shade300,
//                         backgroundColor: Colors.black,
//                         padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(8),
//                         ),
//                       ),
//                       child: Text('Add'),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//             SizedBox(height: 16),

//             // Product Description
//             Text(
//               'The farm-fresh onions are picked at the peak of ripeness, ensuring they deliver the finest flavor and nutrition.',
//               style: TextStyle(
//                 fontSize: 16,
//                 color: Colors.black87,
//                 backgroundColor: Colors.pink.shade100,
//               ),
//             ),
//             SizedBox(height: 24),

//             // Farmer Information
//             Container(
//               padding: EdgeInsets.all(16),
//               decoration: BoxDecoration(
//                 color: Colors.pink.shade100,
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     'This is farmed by\nSenapathy2 from Polachi',
//                     style: TextStyle(
//                       fontSize: 16,
//                     ),
//                   ),
//                   IconButton(
//                     onPressed: () {
//                       // Profile button functionality
//                     },
//                     icon: Icon(Icons.account_circle),
//                     iconSize: 40,
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: '',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.favorite),
//             label: '',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.shopping_cart),
//             label: '',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.more_vert),
//             label: '',
//           ),
//         ],
//         currentIndex: 0, // Set the active tab (index of selected tab)
//         selectedItemColor: Colors.black,
//         unselectedItemColor: Colors.black54,
//         onTap: (index) {
//           // Handle bottom navigation tap
//           switch (index) {
//             case 0:
//               // Navigate to Home
//               break;
//             case 1:
//               // Navigate to Favorites
//               break;
//             case 2:
//               // Navigate to Cart
//               break;
//             case 3:
//               // Show more options
//               break;
//           }
//         },
//         showSelectedLabels: false,
//         showUnselectedLabels: false,
//       ),
//     );
//   }
// }

// import 'package:c2c/pages/Rhome.dart';
// import 'package:c2c/pages/Rprofile.dart';
// import 'package:c2c/pages/cart.dart';
// import 'package:flutter/material.dart';

// class OnionPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         leading: IconButton(
//           icon: Icon(Icons.menu, color: Colors.black),
//           onPressed: () {
//             Scaffold.of(context).openDrawer();
//           },
//         ),
//         title: Text(
//           'Product display',
//           style: TextStyle(
//             color: Colors.black,
//             fontWeight: FontWeight.bold,
//             fontSize: 24,
//           ),
//         ),
//         centerTitle: true,
//         actions: [
//           IconButton(
//             icon: Icon(Icons.account_circle, color: Colors.black),
//             onPressed: () {
//               // Navigate to Profile
//             },
//           ),
//         ],
//       ),
      
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Product Image
//             Center(
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(16.0),
//                 child: Image.asset(
//                   'assets/icons/Logo.png', // Replace with your image path
//                   height: 200,
//                   width: 200,
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//             SizedBox(height: 16),
            
//             // Product Name and Price
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   'Onions',
//                   style: TextStyle(
//                     fontSize: 24,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 Row(
//                   children: [
//                     Container(
//                       padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
//                       decoration: BoxDecoration(
//                         color: Colors.grey.shade300,
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                       child: Text(
//                         'Rs.30/kg',
//                         style: TextStyle(
//                           fontSize: 16,
//                           fontWeight: FontWeight.w500,
//                         ),
//                       ),
//                     ),
//                     SizedBox(width: 8),
//                     ElevatedButton(
//                       onPressed: () {
//                         // Add to cart functionality
//                       },
//                       style: ElevatedButton.styleFrom(
//                         foregroundColor: Colors.black,
//                         backgroundColor: Colors.white,
//                         padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(8),
//                         ),
//                       ),
//                       child: Text('Add'),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//             SizedBox(height: 20),

//             // Product Description inside a box
//             Container(
//               padding: EdgeInsets.all(16),
//               decoration: BoxDecoration(
//                 color: Colors.pink.shade100,
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               child: Text(
//                 'The farm-fresh onions are picked at the peak of ripeness, ensuring they deliver the finest flavor and nutrition.',
//                 style: TextStyle(
//                   fontSize: 16,
//                   color: Colors.black87,
//                 ),
//               ),
//             ),
//             SizedBox(height: 24),

//             // Farmer Information
//             Container(
//               padding: EdgeInsets.all(16),
//               decoration: BoxDecoration(
//                 color: Colors.pink.shade100,
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     'This is farmed by\nSenapathy2 from Polachi',
//                     style: TextStyle(
//                       fontSize: 16,
//                     ),
//                   ),
//                   IconButton(
//                     onPressed: () {
//                       // Profile button functionality
//                     },
//                     icon: Icon(Icons.account_box),
//                     iconSize: 40,
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: '',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.favorite),
//             label: '',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.shopping_cart),
//             label: '',
//           ),
//         ],
//         currentIndex: 0, // Set the active tab (index of selected tab)
//         selectedItemColor: Colors.black,
//         unselectedItemColor: Colors.black54,
//         onTap: (index) {
//           // Handle bottom navigation tap
//           switch (index) {
//             case 0:
// Navigator.push(context, MaterialPageRoute(builder: (context) => Rhome(),),);

//               break;
//             case 1:
// Navigator.push(context, MaterialPageRoute(builder: (context) => Rprofile(),),);
//               break;
//             case 2:
// Navigator.push(context, MaterialPageRoute(builder: (context) => CartScreen(),),);
//               break;
//           }
//         },
//         showSelectedLabels: false,
//         showUnselectedLabels: false,
//       ),
//     );
//   }
// }

import 'package:c2c/pages/Rhome.dart';
import 'package:c2c/pages/Rprofile.dart';
import 'package:c2c/pages/cart.dart';
import 'package:c2c/pages/langset.dart';
import 'package:flutter/material.dart';

class OnionPage extends StatelessWidget {
  const OnionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.menu, color: Colors.black),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        title: Text(
          'Product display',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.account_circle, color: Colors.black),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Rprofile()),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Product Image
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Image.asset(
                  'assets/icons/onion.png', // Replace with your image path
                  height: 200,
                  width: 400,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 16),

            // Product Name and Price
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Onions',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        'Rs.30/kg',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    ElevatedButton(
                      onPressed: () {
                        // Add to cart functionality
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.white,
                        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text('Add'),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),

            // Product Description inside a box
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.pink.shade100,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                'The farm-fresh onions are picked at the peak of ripeness, ensuring they deliver the finest flavor and nutrition.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                ),
              ),
            ),
            SizedBox(height: 24),

            // Farmer Information
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.pink.shade100,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'This is farmed by\nSenapathy2 from Polachi',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Rprofile()),
                      );
                    },
                    icon: Icon(Icons.account_box),
                    iconSize: 40,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: '',
          ),
        ],
        currentIndex: 0, // Set the active tab (index of selected tab)
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black54,
        onTap: (index) {
          // Handle bottom navigation tap
          switch (index) {
            case 0:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Rhome()),
              );
              break;
            case 1:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Rprofile()),
              );
              break;
            case 2:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CartScreen()),
              );
              break;
          }
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );
  }
}
