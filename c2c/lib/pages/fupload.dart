// import 'package:c2c/pages/Rhome.dart';
// import 'package:c2c/pages/farmerprofile.dart';
// import 'package:flutter/material.dart';

// class farmup extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Profile'),
//         leading: IconButton(
//           icon: Icon(Icons.menu),
//           onPressed: () {
//             // Handle menu button press
//           },
//         ),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.account_circle),
//             onPressed: () {
//               // Handle profile button press
//             },
//           ),
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             CircleAvatar(
//               radius: 50,
//               backgroundColor: Colors.grey[300],
//               child: Icon(
//                 Icons.person,
//                 size: 50,
//                 color: Colors.grey[700],
//               ),
//             ),
//             SizedBox(height: 16),
//             Text(
//               'Upload Profile Picture',
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 24),
//             ElevatedButton.icon(
//               icon: Icon(Icons.photo_library),
//               label: Text('Choose from library'),
//               onPressed: () {
//                 // Handle choose from library action
//               },
//               style: ElevatedButton.styleFrom(
//                 foregroundColor: Colors.white,
//                 backgroundColor: Colors.black,
//                 side: BorderSide(color: Colors.grey),
//               ),
//             ),
//             SizedBox(height: 16),
//             ElevatedButton.icon(
//               icon: Icon(Icons.cloud_upload),
//               label: Text('Import from drive'),
//               onPressed: () {
//                 // Handle import from drive action
//               },
//               style: ElevatedButton.styleFrom(
//                 foregroundColor: Colors.white,
//                 backgroundColor: Colors.black,
//                 side: BorderSide(color: Colors.grey),
//               ),
//             ),
//             SizedBox(height: 16),
//             ElevatedButton.icon(
//               icon: Icon(Icons.camera_alt),
//               label: Text('Take photo'),
//               onPressed: () {
//                 // Handle take photo action
//               },
//               style: ElevatedButton.styleFrom(
//                 foregroundColor: Colors.white,
//                 backgroundColor: Colors.black,
//                 side: BorderSide(color: Colors.grey),
//               ),
//             ),
//             SizedBox(height: 24),
//             ElevatedButton(
//               child: Text('Upload'),
//               onPressed: () {
//                     Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen(),),);
//               },
//               style: ElevatedButton.styleFrom(
//                 foregroundColor: Colors.teal[300],
//                 backgroundColor: Colors.white,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:c2c/pages/farmerprofile.dart';
import 'package:flutter/material.dart';

class farmup extends StatelessWidget {
  const farmup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(90.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.grey[300],
              child: Icon(
                Icons.person,
                size: 50,
                color: Colors.grey[700],
              ),
            ),
            Text(
              'Upload Profile Picture',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            ElevatedButton.icon(
              icon: Icon(Icons.photo_library),
              label: Text('Choose from library'),
              onPressed: () {
                // Handle choose from library action
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.grey,
              ),
            ),
            ElevatedButton.icon(
              icon: Icon(Icons.cloud_upload),
              label: Text('Import from drive'),
              onPressed: () {
                // Handle import from drive action
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.grey,
              ),
            ),
            ElevatedButton.icon(
              icon: Icon(Icons.camera_alt),
              label: Text('Take photo'),
              onPressed: () {
                // Handle take photo action
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.grey,
              ),
            ),
            ElevatedButton(
              child: Text('Upload'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfileScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
