import 'package:c2c/Teduin.dart';
import 'package:c2c/pages/Tcommunity.dart';
import 'package:c2c/pages/Tfarhome.dart';
import 'package:c2c/pages/Tfarmerprofile.dart';
import 'package:c2c/pages/Tinsurance.dart';
import 'package:c2c/pages/Treport.dart';
import 'package:c2c/pages/community.dart';
import 'package:c2c/pages/farmerhome.dart';
import 'package:c2c/pages/report.dart';
import 'package:flutter/material.dart';

class TProductSalesScreen extends StatefulWidget {
  const TProductSalesScreen({super.key});

  @override
  State<TProductSalesScreen> createState() => _ProductSalesScreenState();
}

class _ProductSalesScreenState extends State<TProductSalesScreen> {
  int my_index = 0;

  final screens = [farHomePage(), ReportScreen(), CommunityPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('தயாரிப்பு விற்பனை'),
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
                MaterialPageRoute(builder: (context) => TProfileScreen()),
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
              'மெனு',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('முகப்பு பக்கம்'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => THomePage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.auto_graph),
            title: Text('அறிக்கைகள்'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => TReportScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.people_alt_rounded),
            title: Text('சேருங்கள்'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => TCommunityPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.eco),
            title: Text('தயாரிப்புகளைச் சேர்க்கவும்'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => TProductSalesScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.attach_money_outlined),
            title: Text('காப்பீட்டு கவரேஜ்'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => TInsuranceCoverageScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.cast_for_education),
            title: Text('Educational Insights'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => TEducationalInsightsScreen()),
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
                'பயிர் பெயர்',
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
              'அளவு: ',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(width: 10),
            ElevatedButton(
              onPressed: () {
                // Add functionality here
              },
              child: Text('உள்ளிடவும்'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(80, 35),
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Text(
          'அவர் விற்கும் பயிர் பற்றிய விளக்கம்',
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
              child: Text('இல் விற்கவும்'),
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
