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

import 'package:c2c/pages/community.dart';
import 'package:c2c/pages/eduin.dart';
import 'package:c2c/pages/farmerhome.dart';
import 'package:c2c/pages/farmerprofile.dart';
import 'package:c2c/pages/farmsales.dart';
import 'package:c2c/pages/insurance.dart';
import 'package:c2c/pages/report.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int myIndex = 0;

  final List<Widget> screens = [
    farHomePage(),
    ReportScreen(),
    CommunityPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
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
                MaterialPageRoute(builder: (context) => ProfileScreen()),
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
              child: Text('Menu'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                setState(() {
                  myIndex = 0;
                });
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.auto_graph),
              title: Text('Reports'),
              onTap: () {
                setState(() {
                  myIndex = 1;
                });
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text('Community'),
              onTap: () {
                setState(() {
                  myIndex = 2;
                });
                Navigator.pop(context); // Close the drawer
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
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.auto_graph),
            label: 'Reports',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_alt_rounded),
            label: 'Join',
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
