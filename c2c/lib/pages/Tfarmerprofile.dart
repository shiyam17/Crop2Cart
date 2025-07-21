import 'package:c2c/Teduin.dart';
import 'package:c2c/pages/Tfarhome.dart';
import 'package:c2c/pages/Tfarmsales.dart';
import 'package:c2c/pages/Tinsurance.dart';
import 'package:flutter/material.dart';

class TProfileScreen extends StatefulWidget {
  const TProfileScreen({super.key});

  @override
  State<TProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<TProfileScreen> {
  int my_index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('சுயவிவரம்'),
        centerTitle: true,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => THomePage()));
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
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
              leading: Icon(Icons.account_circle),
              title: Text('சுயவிவரம்'),
              onTap: () {
                Navigator.pop(context); // close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TProfileScreen()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('முகப்பு பக்கம்'),
              onTap: () {
                Navigator.pop(context); // close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => THomePage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.eco),
              title: Text('தயாரிப்புகளைச் சேர்க்கவும்'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => TProductSalesScreen()),
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
              title: Text('கல்வி நுண்ணறிவு'),
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
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'சேனாபதி',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'பொள்ளாச்சியில் உருளைக்கிழங்கு பண்ணை வைத்துள்ளார்',
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
                ),
              ],
            ),
            SizedBox(height: 64),
            Text(
              'பற்றி',
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
                'சேனாபதிக்கு விவசாயத்தில் 10 வருட அனுபவம் உண்டு. அவர் இனிப்பு உருளைக்கிழங்கு போன்ற பல்வேறு பயிர்களையும் பயிரிடுகிறார்.',
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 66),
            Row(
              children: [
                Icon(Icons.agriculture, size: 100),
                SizedBox(width: 26),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      'பொள்ளாச்சியில் உள்ள இந்த விவசாய நிலத்தை சேனாபதி கடந்த 10 ஆண்டுகளாக வெற்றிகரமாக பயிரிட்டு வருகிறார்.',
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
