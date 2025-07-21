// import 'package:c2c/pages/community.dart';
// import 'package:c2c/pages/farmerhome.dart';
// import 'package:c2c/pages/farmerprofile.dart';
// import 'package:c2c/pages/report.dart';
// import 'package:flutter/material.dart';

// class HomePage extends StatefulWidget {
//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   int my_index = 0;
//   final screens=[farHomePage(),ReportScreen(),CommunityPage()];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Home'),
//         centerTitle: true,
//         leading: IconButton(
//           icon: Icon(Icons.menu),
//           onPressed: () {
//             // Handle menu button press
//           },
//         ),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.person),
//             onPressed: () {
//                 Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen()));
//             },
//           ),
//         ],
//       ),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: <Widget>[
//             DrawerHeader(
//               child: Text('Menu'),
//               decoration: BoxDecoration(
//                 color: Colors.blue,
//               ),
//             ),
//             ListTile(
//               leading: Icon(Icons.home),
//               title: Text('Home'),
//               onTap: () {
//                 // Handle the action
//               },
//             ),
//             // Add more items here
//           ],
//         ),
//       ),
//       body: screens[my_index],
//       bottomNavigationBar: BottomNavigationBar(
//         onTap: (index) {
//           setState(() {
//             my_index = index;
//           });

//         },
//         currentIndex: my_index,
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.auto_graph),
//             label: 'Reports',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.people_alt_rounded),
//             label: 'Join',
//           ),
//         ],
//         selectedItemColor: Colors.black,
//         unselectedItemColor: Colors.grey,
//         showUnselectedLabels: true,
//       ),
//     );
//   }

//   Widget _buildProfileIcon() {
//     return Container(
//       width: 60,
//       height: 60,
//       decoration: BoxDecoration(
//         color: Colors.grey[200],
//         borderRadius: BorderRadius.circular(12),
//       ),
//       child: Icon(Icons.person, size: 40),
//     );
//   }

//   Widget _buildInventoryItem() {
//     return Container(
//       padding: EdgeInsets.all(16),
//       decoration: BoxDecoration(
//         color: Colors.grey[200],
//         borderRadius: BorderRadius.circular(12),
//       ),
//       child: Icon(Icons.eco, size: 40),
//     );
//   }
// }

import 'package:c2c/Teduin.dart';
import 'package:c2c/pages/Tcommunity.dart';
import 'package:c2c/pages/Tfarmerhome.dart';
import 'package:c2c/pages/Tfarmerprofile.dart';
import 'package:c2c/pages/Tfarmsales.dart';
import 'package:c2c/pages/Tinsurance.dart';
import 'package:c2c/pages/Treport.dart';
import 'package:flutter/material.dart';

class THomePage extends StatefulWidget {
  const THomePage({super.key});

  @override
  State<THomePage> createState() => _HomePageState();
}

class _HomePageState extends State<THomePage> {
  int myIndex = 0;

  final List<Widget> screens = [
    TfarHomePage(),
    TReportScreen(),
    TCommunityPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('முகப்பு பக்கம்'),
        centerTitle: true,
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer(); // Opens the drawer
              },
            );
          },
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
      body: screens[myIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            myIndex = index;
          });
        },
        currentIndex: myIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'முகப்பு பக்கம்',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.auto_graph),
            label: 'அறிக்கைகள்',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_alt_rounded),
            label: 'சேருங்கள்',
          ),
        ],
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
      ),
    );
  }

  Widget _buildProfileIcon() {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Icon(Icons.person, size: 40),
    );
  }

  Widget _buildInventoryItem() {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Icon(Icons.eco, size: 40),
    );
  }
}
