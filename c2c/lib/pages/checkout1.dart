import 'package:c2c/screens/payment_screen.dart';
import 'package:flutter/material.dart';

class CheckoutPage1 extends StatelessWidget {
  final int subtotal = 2400;
  final int gst = 120;
  final int deliveryCharges = 150;

  const CheckoutPage1({super.key});

  @override
  Widget build(BuildContext context) {
    int billAmount = subtotal + gst;
    int totalAmount = billAmount + deliveryCharges;

    return Scaffold(
      appBar: AppBar(
        title: Text('Checkout'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Bill Details',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(height: 10),
            Text('100 x Tomato               Rs 1200',
                style: TextStyle(fontSize: 16, color: Colors.grey)),
            Text('100 x Potato               Rs 1200',
                style: TextStyle(fontSize: 16, color: Colors.grey)),
            Divider(thickness: 1),
            SizedBox(height: 5),
            _buildBillDetailRow('Subtotal', subtotal),
            _buildBillDetailRow('GST', gst),
            _buildBillDetailRow('Bill Amount', billAmount),
            _buildBillDetailRow('Delivery Charges', deliveryCharges),
            Divider(thickness: 1),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total Amount',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                Text('Rs $totalAmount',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ],
            ),
            Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: () => _onCheckOutPressed(context, totalAmount),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal.shade200,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                ),
                child: Text(
                  'Check Out',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favorites'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Cart'),
        ],
      ),
    );
  }

  Widget _buildBillDetailRow(String label, int amount) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: TextStyle(fontSize: 16, color: Colors.grey)),
          Text('Rs $amount',
              style: TextStyle(fontSize: 16, color: Colors.grey)),
        ],
      ),
    );
  }

  void _onCheckOutPressed(BuildContext context, int totalAmount) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Checkout'),
          content: Text(
              'Your total amount is Rs $totalAmount. Do you want to proceed?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PaymentScreen(),
                  ),
                );
              },
              child: Text('Yes'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('No'),
            ),
          ],
        );
      },
    );
  }

  void _completeCheckout() {
    // Logic for completing the checkout
    print('Checkout completed');
  }
}
