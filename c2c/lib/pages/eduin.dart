// import 'package:c2c/pages/farhome.dart';
// import 'package:c2c/pages/farmerprofile.dart';
// import 'package:c2c/pages/farmsales.dart';
// import 'package:c2c/pages/insurance.dart';
// import 'package:flutter/material.dart';

// class EducationalInsightsScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: Builder(
//           builder: (BuildContext context) {
//             return IconButton(
//               icon: Icon(Icons.menu),
//               onPressed: () {
//                 Scaffold.of(context).openDrawer();
//               },
//             );
//           },
//         ),
//         title: Text('Educational insights'),
//         centerTitle: true,
//         actions: [
//           IconButton(
//             icon: Icon(Icons.home),
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => HomePage()),
//               );
//             },
//           ),
//         ],
//       ),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: <Widget>[
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
//            ListTile(
//               leading: Icon(Icons.account_circle),
//               title: Text('Profile'),
//               onTap: () {
//                 Navigator.pop(context); // close the drawer
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => ProfileScreen()),
//                 );
//               },
//             ),
//             ListTile(
//               leading: Icon(Icons.home),
//               title: Text('Home'),
//               onTap: () {
//                 Navigator.pop(context); // close the drawer
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => HomePage()),
//                 );
//               },
//             ),
//             ListTile(
//               leading: Icon(Icons.settings),
//               title: Text('Settings'),
//               onTap: () {
//                 // Handle settings action
//               },
//             ),
//             ListTile(
//             leading: Icon(Icons.eco),
//             title: Text('Add Products'),
//             onTap: () {
//             Navigator.pushReplacement(
//                 context,
//                 MaterialPageRoute(builder: (context) => ProductSalesScreen()),
//               );
//             },
//           ),
//           ListTile(
//             leading: Icon(Icons.attach_money_outlined),
//             title: Text('Insurance Coverage'),
//             onTap: () {
//               Navigator.pushReplacement(
//                 context,
//                 MaterialPageRoute(builder: (context) => InsuranceCoverageScreen()),
//               );
//             },
//           ),
//           ListTile(
//             leading: Icon(Icons.cast_for_education),
//             title: Text('Educational Insights'),
//             onTap: () {
//               Navigator.pushReplacement(
//                 context,
//                 MaterialPageRoute(builder: (context) => EducationalInsightsScreen()),
//               );
//             },
//           ),
//           ],
//         ),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         //children: [SizedBox(width: 380,),Image.asset('assets/Logo.png'),Text('Crop2cart',style: TextStyle(color: Color(0xff30D32D),fontSize: 36,fontWeight: FontWeight.w600))],
//         children: [SizedBox(width: 100),Container(child: Image(image: AssetImage('assets/icons/tn1.png'),height: 300,width: 700,),),Container(child: Image(image: AssetImage('assets/icons/tn2.png'),height: 300,width: 700,))],
//       ),
//     );
//   }
// }

import 'package:c2c/pages/farhome.dart';
import 'package:c2c/pages/farmerprofile.dart';
import 'package:c2c/pages/farmsales.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import 'insurance.dart';

class EducationalInsightsScreen extends StatelessWidget {
  const EducationalInsightsScreen({super.key});

  void navigateToVideo(BuildContext context, String videoPath) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => VideoScreen(videoPath: videoPath),
      ),
    );
  }

  void navigateToPage(BuildContext context, Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Educational Insights"),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {
              // Handle account icon tap
              navigateToPage(context, AccountPage());
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
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
              onTap: () {
                Navigator.pop(context); // close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context); // close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                // Handle settings action
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
                  MaterialPageRoute(
                      builder: (context) => InsuranceCoverageScreen()),
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
                      builder: (context) => EducationalInsightsScreen()),
                );
              },
            ),
          ],
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(50.0),
        children: [
          GestureDetector(
            //onTap: () => navigateToVideo(context, 'assets/videos/guide.mp4'),
            child: Image.asset(
              'assets/icons/tn1.png',
              height: 150,
            ),
          ),
          SizedBox(height: 100.0),
          GestureDetector(
            onTap: () => navigateToVideo(context, 'assets/videos/guide.mp4'),
            child: Image.asset(
              'assets/icons/tn2.png',
              height: 150,
            ),
          ),
        ],
      ),
    );
  }
}

class VideoScreen extends StatefulWidget {
  final String videoPath;

  const VideoScreen({super.key, required this.videoPath});

  @override
  _VideoScreenState createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(widget.videoPath)
      ..initialize().then((_) {
        setState(() {});
        _controller.play();
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Video Player"),
      ),
      body: Center(
        child: _controller.value.isInitialized
            ? AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              )
            : CircularProgressIndicator(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _controller.value.isPlaying
                ? _controller.pause()
                : _controller.play();
          });
        },
        child: Icon(
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),
    );
  }
}

// Dummy pages for navigation
class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Account")),
      body: Center(child: Text("Account Page")),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile")),
      body: Center(child: Text("Profile Page")),
    );
  }
}

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Settings")),
      body: Center(child: Text("Settings Page")),
    );
  }
}

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Notifications")),
      body: Center(child: Text("Notifications Page")),
    );
  }
}

class HelpSupportPage extends StatelessWidget {
  const HelpSupportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Help & Support")),
      body: Center(child: Text("Help & Support Page")),
    );
  }
}

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Favorites")),
      body: Center(child: Text("Favorites Page")),
    );
  }
}

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cart")),
      body: Center(child: Text("Cart Page")),
    );
  }
}
