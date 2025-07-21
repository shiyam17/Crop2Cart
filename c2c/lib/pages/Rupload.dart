import 'package:c2c/pages/Rprofile.dart';
import 'package:flutter/material.dart';

class Rupload extends StatelessWidget {
  const Rupload({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20),
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.grey.shade300,
                child: Icon(
                  Icons.person,
                  size: 50,
                  color: Colors.grey.shade600,
                ),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Text(
                'Upload Profile Picture',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey.shade400),
              ),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.photo_library, color: Colors.purple),
                    title: Text('Choose from library'),
                    onTap: () {
                      // Handle choose from library
                    },
                  ),
                  Divider(height: 1, color: Colors.grey.shade400),
                  ListTile(
                    leading: Icon(Icons.drive_folder_upload, color: Colors.blue),
                    title: Text('Import from drive'),
                    onTap: () {
                      // Handle import from drive
                    },
                  ),
                  Divider(height: 1, color: Colors.grey.shade400),
                  ListTile(
                    leading: Icon(Icons.camera_alt, color: Colors.black),
                    title: Text('Take photo'),
                    onTap: () {
                      // Handle take photo
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
Navigator.push(context, MaterialPageRoute(builder: (context) => Rprofile(),),);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlueAccent,
                padding: EdgeInsets.symmetric(vertical: 15),
                textStyle: TextStyle(fontSize: 16),
              ),
              child: Text('Upload'),
            ),
          ],
        ),
      ),
    );
  }
}

// import 'package:c2c/pages/Rprofile.dart';
// import 'package:flutter/material.dart';
// import 'package:firebase_storage/firebase_storage.dart'; // Firebase Storage import
// import 'dart:io'; // Import for working with files
// import 'package:image_picker/image_picker.dart';


// class Rupload extends StatefulWidget {
//   @override
//   _ProfileScreenState createState() => _ProfileScreenState();
// }

// class _ProfileScreenState extends State<Rupload> {
//   File? _image;
//   final picker = ImagePicker();
//   String? _downloadUrl; // To store the download URL

//   Future pickImage(ImageSource source) async {
//     final pickedFile = await picker.pickImage(source: source);

//     setState(() {
//       if (pickedFile != null) {
//         _image = File(pickedFile.path);
//       }
//     });
//   }

//   Future importFromDrive() async {
//     // Implement Google Drive import logic here.
//     print('Import from Google Drive functionality not yet implemented.');
//   }

//   Future uploadImage() async {
//     if (_image == null) return;

//     try {
//       final storageRef = FirebaseStorage.instance.ref();
//       final imagesRef = storageRef.child('\haha/${DateTime.now()}.png');
//       await imagesRef.putFile(_image!);

//       _downloadUrl = await imagesRef.getDownloadURL();
//       print('Download URL: $_downloadUrl');

//       // Pass the image URL to ProfilePage
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(
//           builder: (context) => Rprofile(imageUrl: _downloadUrl), // Pass the URL
//         ),
//       );
//     } catch (e) {
//       print('Error: $e');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Profile'),
//         backgroundColor: Colors.white,
//         foregroundColor: Colors.black,
//         elevation: 0,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             SizedBox(height: 20),
//             Center(
//               child: CircleAvatar(
//                 radius: 50,
//                 backgroundColor: Colors.grey.shade300,
//                 backgroundImage: _image != null ? FileImage(_image!) : null,
//                 child: _image == null
//                     ? Icon(
//                         Icons.person,
//                         size: 50,
//                         color: Colors.grey.shade600,
//                       )
//                     : null,
//               ),
//             ),
//             SizedBox(height: 20),
//             Center(
//               child: Text(
//                 'Upload Profile Picture',
//                 style: TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//             SizedBox(height: 20),
//             Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10),
//                 border: Border.all(color: Colors.grey.shade400),
//               ),
//               child: Column(
//                 children: [
//                   ListTile(
//                     leading: Icon(Icons.photo_library, color: Colors.purple),
//                     title: Text('Choose from library'),
//                     onTap: () => pickImage(ImageSource.gallery),
//                   ),
//                   Divider(height: 1, color: Colors.grey.shade400),
//                   ListTile(
//                     leading: Icon(Icons.drive_folder_upload, color: Colors.blue),
//                     title: Text('Import from drive'),
//                     onTap: () => importFromDrive(),
//                   ),
//                   Divider(height: 1, color: Colors.grey.shade400),
//                   ListTile(
//                     leading: Icon(Icons.camera_alt, color: Colors.black),
//                     title: Text('Take photo'),
//                     onTap: () => pickImage(ImageSource.camera),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 30),
//             ElevatedButton(
//               onPressed: uploadImage,
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.lightBlueAccent,
//                 padding: EdgeInsets.symmetric(vertical: 15),
//                 textStyle: TextStyle(fontSize: 16),
//               ),
//               child: Text('Upload'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
