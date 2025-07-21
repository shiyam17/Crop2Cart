import 'package:c2c/pages/Tfarhome.dart';
import 'package:c2c/pages/Tfarmerprofile.dart';
import 'package:c2c/pages/Tfarmsales.dart';
import 'package:c2c/pages/Tinsurance.dart';
import 'package:flutter/material.dart';

class TEducationalInsightsScreen extends StatelessWidget {
  const TEducationalInsightsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        title: Text('கல்வி நுண்ணறிவு'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => THomePage()),
              );
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
              leading: Icon(Icons.settings),
              title: Text('அமைப்புகள்'),
              onTap: () {
                // Handle settings action
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //children: [SizedBox(width: 380,),Image.asset('assets/Logo.png'),Text('Crop2cart',style: TextStyle(color: Color(0xff30D32D),fontSize: 36,fontWeight: FontWeight.w600))],
        children: [
          SizedBox(width: 100),
          Container(
            child: Image(
              image: AssetImage('assets/icons/tn1.png'),
              height: 300,
              width: 700,
            ),
          ),
          Container(
              child: Image(
            image: AssetImage('assets/icons/tn2.png'),
            height: 300,
            width: 700,
          ))
        ],
      ),
    );
  }
}
