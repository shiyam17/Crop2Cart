import 'package:c2c/pages/community.dart';
import 'package:c2c/pages/eduin.dart';
import 'package:c2c/pages/farhome.dart';
import 'package:c2c/pages/farmerhome.dart';
import 'package:c2c/pages/farmerprofile.dart';
import 'package:c2c/pages/insurance.dart';
import 'package:c2c/pages/report.dart';
import 'package:flutter/material.dart';

class ProductSalesScreen extends StatefulWidget {
  const ProductSalesScreen({super.key});

  @override
  State<ProductSalesScreen> createState() => _ProductSalesScreenState();
}

class _ProductSalesScreenState extends State<ProductSalesScreen> {
  int my_index = 0;

  final screens = [farHomePage(), ReportScreen(), CommunityPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Sales'),
        centerTitle: true,
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileScreen()),
              );
            },
          ),
        ],
      ),
      drawer: _buildDrawer(context),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildImageContainer(),
            SizedBox(height: 20),
            _buildProductDetails(),
          ],
        ),
      ),
    );
  }

  Widget _buildDrawer(BuildContext context) {
    return Drawer(
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
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.auto_graph),
            title: Text('Reports'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => ReportScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.people_alt_rounded),
            title: Text('Join'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => CommunityPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.eco),
            title: Text('Add Products'),
            onTap: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => ProductSalesScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.attach_money_outlined),
            title: Text('Insurance Coverage'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => InsuranceCoverageScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.cast_for_education),
            title: Text('Educational Insights'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => EducationalInsightsScreen()),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildImageContainer() {
    return Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Icon(Icons.grass, size: 100),
      ),
    );
  }

  Widget _buildProductDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                'Crop name',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(Icons.agriculture, size: 30),
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Text(
              'Qty: ',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(width: 10),
            ElevatedButton(
              onPressed: () {
                // Add functionality here
              },
              child: Text('Enter'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(80, 35),
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Text(
          'Description bout the crop he sells',
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(height: 232),
        Row(
          children: [
            IconButton(
              icon: Icon(Icons.info_outline),
              onPressed: () {
                // Add functionality here
              },
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                // Add functionality here
              },
              child: Text('Sell at'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              ),
            ),
          ],
        ),
      ],
    );
  }
}