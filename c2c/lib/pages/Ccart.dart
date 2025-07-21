  import 'package:flutter/material.dart';

  class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            'Your Cart',
            style: TextStyle(color: Colors.black),
          ),
          leading: IconButton(
            icon: Icon(Icons.menu, color: Colors.black),
            onPressed: () {},
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.account_circle, color: Colors.black),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.location_on, color: Colors.red),
                    SizedBox(width: 8),
                    Text('Delivery to (Address)'),
                  ],
                ),
                SizedBox(height: 12),
                CartItem(
                  imageUrl:
                      'https://images.unsplash.com/photo-1605453034974-12444bf22dee',
                  itemName: 'Tomato',
                  pricePerKg: 'Rs. 25/kg',
                  minQuantity: '5kg',
                  cost: 'Rs 12',
                  showBuyButton: false,
                ),
                SizedBox(height: 12),
                CartItem(
                  imageUrl:
                      'https://images.unsplash.com/photo-1601079410629-2a7a4a1335bb',
                  itemName: 'Potato',
                  pricePerKg: 'Rs. 25/kg',
                  minQuantity: '5kg',
                  cost: 'Rs 12',
                  showBuyButton: true,
                ),
                SizedBox(height: 20),
                Text(
                  'Missed something?',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Text(
                      'Browse store',
                      style: TextStyle(
                        color: Colors.purple,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(Icons.arrow_forward, color: Colors.purple, size: 16),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  'Would you like to tip?',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Wrap(
                  spacing: 20,
                  children: [
                    TipButton(text: 'Rs 10'),
                    TipButton(text: 'Rs 20'),
                    TipButton(text: 'Rs 50'),
                  ],
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: Colors.yellow,
          unselectedItemColor: Colors.black,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              label: '',
            ),
          ],
          onTap: (index) {
            if (index == 0) {
              
            } else if (index == 1) {
              // Navigate to CartScreen or any other screen if needed
            } else if (index == 2) {
              // Handle menu icon tap
            }
          },
        ),
      );
    }
  }

  class CartItem extends StatelessWidget {
    final String imageUrl;
    final String itemName;
    final String pricePerKg;
    final String minQuantity;
    final String cost;
    final bool showBuyButton;

    const CartItem({super.key, 
      required this.imageUrl,
      required this.itemName,
      required this.pricePerKg,
      required this.minQuantity,
      required this.cost,
      this.showBuyButton = false,
    });

    @override
    Widget build(BuildContext context) {
      return Column(
        children: [
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                          image: NetworkImage(imageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            itemName,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            pricePerKg,
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Min Qty : $minQuantity',
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                          SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              QuantitySelector(),
                              Text(
                                cost,
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => NegotiationPage()),
                              );
                            },
                            child: Text(
                              'Negotiation',
                              style: TextStyle(color: Colors.grey[600]),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          if (showBuyButton)
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.grey),
                ),
                child: Center(
                  child: TextButton(
                    onPressed: () {
                      
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.green,
                      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(
                      'Buy',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
        ],
      );
    }
  }

  class QuantitySelector extends StatefulWidget {
  const QuantitySelector({super.key});

    @override
    _QuantitySelectorState createState() => _QuantitySelectorState();
  }

  class _QuantitySelectorState extends State<QuantitySelector> {
    int _quantity = 5;

    void _increment() {
      setState(() {
        _quantity++;
      });
    }

    void _decrement() {
      if (_quantity > 5) {
        setState(() {
          _quantity--;
        });
      }
    }

    @override
    Widget build(BuildContext context) {
      return Row(
        children: [
          IconButton(
            icon: Icon(Icons.remove_circle_outline, color: Colors.grey[600]),
            onPressed: _decrement,
          ),
          Text(
            '$_quantity Kg',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          IconButton(
            icon: Icon(Icons.add_circle_outline, color: Colors.grey[600]),
            onPressed: _increment,
          ),
        ],
      );
    }
  }

  class TipButton extends StatelessWidget {
    final String text;
    final double fontSize;

    const TipButton({super.key, required this.text, this.fontSize = 16});

    @override
    Widget build(BuildContext context) {
      return Container(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        decoration: BoxDecoration(
          color: Colors.pink[100],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          text,
          style: TextStyle(fontSize: fontSize, color: Colors.black),
        ),
      );
    }
  }

  class NegotiationPage extends StatefulWidget {
  const NegotiationPage({super.key});

    @override
    _NegotiationPageState createState() => _NegotiationPageState();
  }

  class _NegotiationPageState extends State<NegotiationPage> {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            'Negotiation',
            style: TextStyle(color: Colors.black),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Negotiate Price for Item',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 12),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your offer',
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Handle negotiation submission
                },
                child: Text('Submit Offer'),
              ),
            ],
          ),
        ),
      );
    }
  }

// import 'package:c2c/pages/Rhome.dart';
// import 'package:c2c/pages/Rprofile.dart';
// import 'package:c2c/pages/checkout1.dart';
// import 'package:c2c/pages/chome.dart';
// import 'package:c2c/pages/cprofile.dart';
// import 'package:c2c/pages/negotiationpage.dart';
// import 'package:flutter/material.dart';

// class CartScreen1 extends StatelessWidget {
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
//  Navigator.push(context, MaterialPageRoute(builder: (context) => cprofile()));            
//             },
//           ),
//         ],
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
//                 itemName: 'Tomato',
//                 pricePerKg: 'Rs. 25/kg',
//                 minQuantity: '.25kg',
//                 cost: 'Rs 60', // Assuming 5kg * 12
//                 showBuyButton: false,
//               ),
//               SizedBox(height: 12),
//               CartItem(
//                 imageUrl:
//                     'https://images.unsplash.com/photo-1601079410629-2a7a4a1335bb',
//                 itemName: 'Potato',
//                 pricePerKg: 'Rs. 25/kg',
//                 minQuantity: '.25kg',
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
//         currentIndex: 0, // Set the active tab (index of selected tab)
//         selectedItemColor: Colors.black,
//         unselectedItemColor: Colors.black54,
//         onTap: (index) {
//           // Handle bottom navigation tap
//           switch (index) {
//             case 0:
// Navigator.push(context, MaterialPageRoute(builder: (context) => Chome(),),);

//               break;
//             case 1:
// Navigator.push(context, MaterialPageRoute(builder: (context) => cprofile(),),);
//               break;
//             case 2:
// Navigator.push(context, MaterialPageRoute(builder: (context) => CartScreen1(),),);
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
//                   onPressed: () {//CheckoutPage1
// Navigator.push(context, MaterialPageRoute(builder: (context) => CheckoutPage1(),),);

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

