// import 'package:c2c/pages/Rhome.dart';
// import 'package:c2c/pages/Rprofile.dart';
// import 'package:c2c/pages/checkout1.dart';
// import 'package:c2c/pages/negotiationpage.dart';
// import 'package:flutter/material.dart';

// class CartScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         leading: Builder(
//           builder: (BuildContext context) {
//             return IconButton(
//               icon: Icon(Icons.menu, color: Colors.black),
//               onPressed: () {
//                 Scaffold.of(context).openDrawer();
//               },
//             );
//           },
//         ),
//         title: Text(
//           'Cart',
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
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => Rprofile()),
//               );
//             },
//           ),
//         ],
//       ),

//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: [
//             DrawerHeader(
//               decoration: BoxDecoration(
//                 color: Colors.blue,
//               ),
//               child: Text(
//                 'Menu',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 24,
//                 ),
//               ),
//             ),
//             ListTile(
//               leading: Icon(Icons.home),
//               title: Text('Home'),
//               onTap: () {
//                 Navigator.push(context, MaterialPageRoute(builder: (context) => Rhome()));
//               },
//             ),
//             ListTile(
//               leading: Icon(Icons.shopping_cart),
//               title: Text('Cart'),
//               onTap: () {
//                 Navigator.push(context, MaterialPageRoute(builder: (context) => CartScreen()));
//               },
//             ),
//             ListTile(
//               leading: Icon(Icons.language),
//               title: Text('Language Settings'),
//               onTap: () {
//                 Navigator.push(context, MaterialPageRoute(builder: (context) => LanguageSettingsPage()));
//               },
//             ),
//             ListTile(
//               leading: Icon(Icons.logout),
//               title: Text('Logout'),
//               onTap: () {
//                 // Implement logout functionality here
//               },
//             ),
//           ],
//         ),
//       ),

//       body: Padding(
//         padding: const EdgeInsets.all(12.0),
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Row(
//                 children: [
//                   Icon(Icons.location_on, color: Colors.red),
//                   SizedBox(width: 8),
//                   Text('Delivery to (Address)'),
//                 ],
//               ),
//               SizedBox(height: 12),
//               CartItem(
//                 imageUrl:
//                     'https://images.unsplash.com/photo-1605453034974-12444bf22dee',
//                 itemName: 'Onion',
//                 pricePerKg: 'Rs. 25/kg',
//                 minQuantity: '5kg',
//                 cost: 'Rs 60', // Assuming 5kg * 12
//                 showBuyButton: false,
//               ),
//               SizedBox(height: 12),
//               CartItem(
//                 imageUrl:
//                     'https://images.unsplash.com/photo-1601079410629-2a7a4a1335bb',
//                 itemName: 'Potato',
//                 pricePerKg: 'Rs. 25/kg',
//                 minQuantity: '5kg',
//                 cost: 'Rs 60', // Assuming 5kg * 12
//                 showBuyButton: true,
//               ),
//               SizedBox(height: 20),
//               Text(
//                 'Missed something?',
//                 style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//               ),
//               GestureDetector(
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => rNegotiationPage()),
//                   );
//                 },
//                 child: Row(
//                   children: [
//                     Text(
//                       'Browse store',
//                       style: TextStyle(
//                         color: Colors.purple,
//                         fontSize: 16,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     Icon(Icons.arrow_forward, color: Colors.purple, size: 16),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 20),
//               Text(
//                 'Would you like to tip?',
//                 style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//               ),
//               Wrap(
//                 spacing: 20,
//                 children: [
//                   TipButton(text: 'Rs 10'),
//                   TipButton(text: 'Rs 20'),
//                   TipButton(text: 'Rs 50'),
//                 ],
//               ),
//             ],
//           ),
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
//         currentIndex: 2, // Set the active tab to Cart (index of selected tab)
//         selectedItemColor: Colors.black,
//         unselectedItemColor: Colors.black54,
//         onTap: (index) {
//           // Handle bottom navigation tap
//           switch (index) {
//             case 0:
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => Rhome()),
//               );
//               break;
//             case 1:
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => Rprofile()),
//               );
//               break;
//             case 2:
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => CartScreen()),
//               );
//               break;
//           }
//         },
//         showSelectedLabels: false,
//         showUnselectedLabels: false,
//       ),
//     );
//   }
// }

// class CartItem extends StatelessWidget {
//   final String imageUrl;
//   final String itemName;
//   final String pricePerKg;
//   final String minQuantity;
//   final String cost;
//   final bool showBuyButton;

//   CartItem({
//     required this.imageUrl,
//     required this.itemName,
//     required this.pricePerKg,
//     required this.minQuantity,
//     required this.cost,
//     this.showBuyButton = false,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Container(
//           padding: EdgeInsets.all(12),
//           decoration: BoxDecoration(
//             color: Colors.grey[200],
//             borderRadius: BorderRadius.circular(8),
//           ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Row(
//                 children: [
//                   Container(
//                     width: 70,
//                     height: 70,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(8),
//                       image: DecorationImage(
//                         image: NetworkImage(imageUrl),
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                   ),
//                   SizedBox(width: 12),
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           itemName,
//                           style: TextStyle(
//                             fontSize: 18,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         Text(
//                           pricePerKg,
//                           style: TextStyle(color: Colors.grey[600]),
//                         ),
//                         SizedBox(height: 8),
//                         Text(
//                           'Min Qty : $minQuantity',
//                           style: TextStyle(color: Colors.grey[600]),
//                         ),
//                         SizedBox(height: 8),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             QuantitySelector(),
//                             Text(
//                               cost,
//                               style: TextStyle(
//                                   fontSize: 16, fontWeight: FontWeight.bold),
//                             ),
//                           ],
//                         ),
//                         SizedBox(height: 8),
//                         TextButton.icon(
//                           onPressed: () {
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) => rNegotiationPage()),
//                             );
//                           },
//                           icon: Icon(
//                             Icons.handshake,
//                             color: Colors.grey[600],
//                           ),
//                           label: Text(
//                             'Negotiation',
//                             style: TextStyle(color: Colors.grey[600]),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//         if (showBuyButton)
//           Padding(
//             padding: const EdgeInsets.only(top: 8.0),
//             child: Container(
//               width: double.infinity,
//               padding: EdgeInsets.all(12),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(8),
//                 border: Border.all(color: Colors.grey),
//               ),
//               child: Center(
//                 child: TextButton(
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) => CheckoutPage1()),
//                     );
//                   },
//                   style: TextButton.styleFrom(
//                     backgroundColor: Colors.green,
//                     padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                   ),
//                   child: Text(
//                     'Buy',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 16,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//       ],
//     );
//   }
// }

// class QuantitySelector extends StatefulWidget {
//   @override
//   _QuantitySelectorState createState() => _QuantitySelectorState();
// }

// class _QuantitySelectorState extends State<QuantitySelector> {
//   int _quantity = 5;

//   void _increment() {
//     setState(() {
//       _quantity++;
//     });
//   }

//   void _decrement() {
//     if (_quantity > 5) {
//       setState(() {
//         _quantity--;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         IconButton(
//           icon: Icon(Icons.remove_circle_outline, color: Colors.grey[600]),
//           onPressed: _decrement,
//         ),
//         Text(
//           '$_quantity Kg',
//           style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//         ),
//         IconButton(
//           icon: Icon(Icons.add_circle_outline, color: Colors.grey[600]),
//           onPressed: _increment,
//         ),
//       ],
//     );
//   }
// }

// class TipButton extends StatelessWidget {
//   final String text;
//   final double fontSize;

//   TipButton({required this.text, this.fontSize = 16});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
//       decoration: BoxDecoration(
//         color: Colors.pink[100],
//         borderRadius: BorderRadius.circular(8),
//       ),
//       child: Text(
//         text,
//         style: TextStyle(fontSize: fontSize, color: Colors.black),
//       ),
//     );
//   }
// }



//2
// import 'package:c2c/pages/Rhome.dart';
// import 'package:c2c/pages/Rprofile.dart';
// import 'package:flutter/material.dart';

// class CartScreen extends StatefulWidget {
//   @override
//   _CartScreenState createState() => _CartScreenState();
// }

// class _CartScreenState extends State<CartScreen> {
//   double tomatoQuantity = 1;
//   double potatoQuantity = 1;
//   final double pricePerKg = 25;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         leading: Builder(
//           builder: (BuildContext context) {
//             return IconButton(
//               icon: Icon(Icons.menu, color: Colors.black),
//               onPressed: () {
//                 Scaffold.of(context).openDrawer();
//               },
//             );
//           },
//         ),
//         title: Text(
//           'Cart',
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
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => Rprofile()),
//               );
//             },
//           ),
//         ],
//       ),

//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             AddressSection(),
//             SizedBox(height: 16),
//             CartItem(
//               image: 'assets/icons/tomato.png', // Use the appropriate image asset path
//               name: 'Tomato',
//               pricePerKg: pricePerKg,
//               quantity: tomatoQuantity,
//               onQuantityChanged: (newQuantity) {
//                 setState(() {
//                   tomatoQuantity = newQuantity;
//                 });
//               },
//               onNegotiationPressed: () {
//                 // Handle negotiation button press
//                 ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//                   content: Text('Negotiation for Tomato'),
//                 ));
//               },
//             ),
//             CartItem(
//               image: 'assets/icons/potato.png', // Use the appropriate image asset path
//               name: 'Potato',
//               pricePerKg: pricePerKg,
//               quantity: potatoQuantity,
//               onQuantityChanged: (newQuantity) {
//                 setState(() {
//                   potatoQuantity = newQuantity;
//                 });
//               },
//               onNegotiationPressed: () {
//                 // Handle negotiation button press
//                 ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//                   content: Text('Negotiation for Potato'),
//                 ));
//               },
//             ),
//             Spacer(),
//             TipSection(),
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
//         currentIndex: 2, // Set the active tab to Cart (index of selected tab)
//         selectedItemColor: Colors.black,
//         unselectedItemColor: Colors.black54,
//         onTap: (index) {
//           // Handle bottom navigation tap
//           switch (index) {
//             case 0:
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => Rhome()),
//               );
//               break;
//             case 1:
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => Rprofile()),
//               );
//               break;
//             case 2:
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => CartScreen()),
//               );
//               break;
//           }
//         },
//         showSelectedLabels: false,
//         showUnselectedLabels: false,
//       ),
//     );
//   }
// }

// class AddressSection extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Icon(Icons.home, color: Colors.red),
//         SizedBox(width: 8),
//         Text('Delivery to (Address)'),
//       ],
//     );
//   }
// }

// class CartItem extends StatelessWidget {
//   final String image;
//   final String name;
//   final double pricePerKg;
//   final double quantity;
//   final ValueChanged<double> onQuantityChanged;
//   final VoidCallback onNegotiationPressed;

//   CartItem({
//     required this.image,
//     required this.name,
//     required this.pricePerKg,
//     required this.quantity,
//     required this.onQuantityChanged,
//     required this.onNegotiationPressed,
//   });

//   @override
//   Widget build(BuildContext context) {
//     double cost = pricePerKg * quantity;

//     return Card(
//       margin: EdgeInsets.symmetric(vertical: 8.0),
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Row(
//           children: [
//             Image.asset(image, width: 50, height: 50),
//             SizedBox(width: 16),
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
//                   Text('Rs. $pricePerKg/kg'),
//                   Row(
//                     children: [
//                       Text('Min Quantity: 5 kg'),
//                       Spacer(),
//                       IconButton(
//                         icon: Icon(Icons.remove_circle_outline),
//                         onPressed: () {
//                           if (quantity > 1) {
//                             onQuantityChanged(quantity - 1);
//                           }
//                         },
//                       ),
//                       Text('$quantity kg'),
//                       IconButton(
//                         icon: Icon(Icons.add_circle_outline),
//                         onPressed: () {
//                           onQuantityChanged(quantity + 1);
//                         },
//                       ),
//                     ],
//                   ),
//                   Text('Cost: Rs. $cost'),
//                   Row(
//                     children: [
//                       IconButton(
//                         icon: Icon(Icons.handshake),
//                         color: Colors.grey,
//                         onPressed: onNegotiationPressed,
//                       ),
//                       SizedBox(width: 8),
//                       Text('Negotiation'),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class TipSection extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text('Missed something?'),
//         TextButton(
//           onPressed: () {},
//           child: Text(
//             'Browse store',
//             style: TextStyle(color: Colors.purple),
//           ),
//         ),
//         SizedBox(height: 16),
//         Text('Would you like to tip?'),
//         Row(
//           children: [
//             Chip(label: Text('Rs 10')),
//             SizedBox(width: 8),
//             Chip(label: Text('Rs 20')),
//             SizedBox(width: 8),
//             Chip(label: Text('Rs 30')),
//             SizedBox(width: 8),
//             Chip(label: Text('Other')),
//           ],
//         ),
//       ],
//     );
//   }
// }


import 'package:c2c/pages/Rhome.dart';
import 'package:c2c/pages/Rprofile.dart';
import 'package:c2c/pages/checkout1.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  double tomatoQuantity = 1;
  double potatoQuantity = 1;
  final double pricePerKg = 25;

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
          'Cart',
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
      
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              AddressSection(),
              SizedBox(height: 16),
              CartItem(
                image: 'assets/icons/tomato.png', // Use the appropriate image asset path
                name: 'Tomato',
                pricePerKg: pricePerKg,
                quantity: tomatoQuantity,
                onQuantityChanged: (newQuantity) {
                  setState(() {
                    tomatoQuantity = newQuantity;
                  });
                },
                onNegotiationPressed: () {
                  // Handle negotiation button press
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('Negotiation for Tomato'),
                  ));
                },
              ),
              CartItem(
                image: 'assets/icons/potato.png', // Use the appropriate image asset path
                name: 'Potato',
                pricePerKg: pricePerKg,
                quantity: potatoQuantity,
                onQuantityChanged: (newQuantity) {
                  setState(() {
                    potatoQuantity = newQuantity;
                  });
                },
                onNegotiationPressed: () {
                  // Handle negotiation button press
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('Negotiation for Potato'),
                  ));
                },
              ),
              SizedBox(height: 16),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CheckoutPage1()),
                    );
                  },
                  child: Text('Buy'),
                ),
              ),
              SizedBox(height: 16),
              TipSection(),
            ],
          ),
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
        currentIndex: 2, // Set the active tab to Cart (index of selected tab)
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


class AddressSection extends StatelessWidget {
  const AddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.home, color: Colors.red),
        SizedBox(width: 8),
        Text('Delivery to (Address)'),
      ],
    );
  }
}

class CartItem extends StatelessWidget {
  final String image;
  final String name;
  final double pricePerKg;
  final double quantity;
  final ValueChanged<double> onQuantityChanged;
  final VoidCallback onNegotiationPressed;

  const CartItem({super.key, 
    required this.image,
    required this.name,
    required this.pricePerKg,
    required this.quantity,
    required this.onQuantityChanged,
    required this.onNegotiationPressed,
  });

  @override
  Widget build(BuildContext context) {
    double cost = pricePerKg * quantity;

    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Image.asset(image, width: 50, height: 50),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('Rs. $pricePerKg/kg'),
                  Row(
                    children: [
                      Text('Min Quantity: 5 kg'),
                      Spacer(),
                      IconButton(
                        icon: Icon(Icons.remove_circle_outline),
                        onPressed: () {
                          if (quantity > 1) {
                            onQuantityChanged(quantity - 1);
                          }
                        },
                      ),
                      Text('$quantity kg'),
                      IconButton(
                        icon: Icon(Icons.add_circle_outline),
                        onPressed: () {
                          onQuantityChanged(quantity + 1);
                        },
                      ),
                    ],
                  ),
                  Text('Cost: Rs. $cost'),
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.handshake),
                        color: Colors.grey,
                        onPressed: onNegotiationPressed,
                      ),
                      SizedBox(width: 8),
                      Text('Negotiation'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TipSection extends StatelessWidget {
  const TipSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Missed something?'),
        TextButton(
          onPressed: () {},
          child: Text(
            'Browse store',
            style: TextStyle(color: Colors.purple),
          ),
        ),
        SizedBox(height: 16),
        Text('Would you like to tip?'),
        Row(
          children: [
            Chip(label: Text('Rs 10')),
            SizedBox(width: 8),
            Chip(label: Text('Rs 20')),
            SizedBox(width: 8),
            Chip(label: Text('Rs 30')),
            SizedBox(width: 8),
            Chip(label: Text('Other')),
          ],
        ),
      ],
    );
  }
}
