// import 'package:flutter/material.dart';


// class CheckoutScreen extends StatefulWidget {
//   @override
//   _CheckoutScreenState createState() => _CheckoutScreenState();
// }

// class _CheckoutScreenState extends State<CheckoutScreen> {
//   final _addressController = TextEditingController();
//   final _codeController = TextEditingController();
//   String _selectedPaymentMethod = 'Credit or Debit Cards';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Checkout'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text('1. Delivery Address', style: TextStyle(fontSize: 18)),
//             SizedBox(height: 8),
//             TextField(
//               controller: _addressController,
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//                 labelText: 'Enter your Shop Address',
//               ),
//             ),
//             SizedBox(height: 16),
//             Text('2. Select a Payment Method', style: TextStyle(fontSize: 18)),
//             SizedBox(height: 8),
//             Text('Your Available Balance', style: TextStyle(fontSize: 16)),
//             SizedBox(height: 8),
//             Row(
//               children: [
//                 Expanded(
//                   child: TextField(
//                     controller: _codeController,
//                     decoration: InputDecoration(
//                       border: OutlineInputBorder(),
//                       labelText: 'Enter Code',
//                     ),
//                   ),
//                 ),
//                 SizedBox(width: 8),
//                 ElevatedButton(
//                   onPressed: () {
//                     // Apply balance code logic
//                   },
//                   child: Text('Apply'),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.teal[200],
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: 16),
//             Text('Another Payment Methods', style: TextStyle(fontSize: 16)),
//             SizedBox(height: 8),
//             RadioListTile<String>(
//               title: Text('Credit or Debit Cards'),
//               value: 'Credit or Debit Cards',
//               groupValue: _selectedPaymentMethod,
//               onChanged: (value) {
//                 setState(() {
//                   _selectedPaymentMethod = value!;
//                 });
//               },
//             ),
//             RadioListTile<String>(
//               title: Text('Net Banking'),
//               value: 'Net Banking',
//               groupValue: _selectedPaymentMethod,
//               onChanged: (value) {
//                 setState(() {
//                   _selectedPaymentMethod = value!;
//                 });
//               },
//             ),
//             RadioListTile<String>(
//               title: Text('Pay on Delivery'),
//               value: 'Pay on Delivery',
//               groupValue: _selectedPaymentMethod,
//               onChanged: (value) {
//                 setState(() {
//                   _selectedPaymentMethod = value!;
//                 });
//               },
//             ),
//             SizedBox(height: 16),
//             Center(
//               child: ElevatedButton(
//                 onPressed: () {
//                   // Payment processing logic
//                   _processPayment();
//                 },
//                 child: Text('Pay Now'),
//                 style: ElevatedButton.styleFrom(
//                   padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//                   backgroundColor: Colors.teal[200],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   void _processPayment() {
//     // Implement payment processing logic here
//     String address = _addressController.text;
//     String code = _codeController.text;
//     String paymentMethod = _selectedPaymentMethod;

//     // Example: Printing values to console
//     print('Address: $address');
//     print('Code: $code');
//     print('Payment Method: $paymentMethod');

//     // Add actual payment logic here
//   }
// }

