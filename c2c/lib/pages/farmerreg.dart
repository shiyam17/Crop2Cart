import 'package:c2c/pages/fupload.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Crop2cart',
            style: TextStyle(color: Color(0xff30D32D), fontSize: 36)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 1),
                Text(
                  'Welcome Onboard',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 8),
                Text(
                  'Let’s help you meet up your tasks',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 32),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Name:',
                    border: OutlineInputBorder(),
                    hintText: 'Enter your Name',
                  ),
                ),
                SizedBox(height: 16),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Phone Number:',
                    border: OutlineInputBorder(),
                    hintText: 'Enter your Phone Number',
                  ),
                  keyboardType: TextInputType.phone,
                ),
                SizedBox(height: 16),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Enter Password',
                    border: OutlineInputBorder(),
                    hintText: 'Create a New password',
                    suffixIcon: Icon(Icons.visibility_off),
                  ),
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                ),
                SizedBox(height: 16),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                    hintText: 'email',
                    suffixIcon: Icon(Icons.mail),
                  ),
                  obscureText: false,
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: 32),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Enter your Aadhaar Number',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 16),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Enter Kissan Credit Card Number:',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 16),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Enter State:',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 16),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Enter District:',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 16),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Enter Your Address:',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 16),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Products You Sell:',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 32),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => farmup(),
                      ),
                    );
                  },
                  // ignore: sort_child_properties_last
                  child: Text('Register'),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.lightBlueAccent,
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    textStyle: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// import 'package:c2c/pages/farmerprofile.dart';
// import 'package:c2c/pages/farmerreg2.dart';
// import 'package:c2c/pages/fupload.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:c2c/pages/services/auth.dart';
// import 'package:flutter/services.dart';

// class OnboardingScreen extends StatefulWidget {
//   @override
//   _OnboardingScreenState createState() => _OnboardingScreenState();
// }

// class _OnboardingScreenState extends State<OnboardingScreen> {
//   String email = "", password = "", name = "", phoneno = "", aadhaar = "", kisanid = "", statef = "", district = "", address = "", products = "";
//   TextEditingController namecontroller = TextEditingController();
//   TextEditingController passwordcontroller = TextEditingController();
//   TextEditingController mailcontroller = TextEditingController();
//   TextEditingController phonenocontroller = TextEditingController();
//   TextEditingController aadhaarcontroller = TextEditingController();
//   TextEditingController kisanidcontroller = TextEditingController();
//   TextEditingController statefcontroller = TextEditingController();
//   TextEditingController districtcontroller = TextEditingController();
//   TextEditingController addresscontroller = TextEditingController();
//   TextEditingController productscontroller = TextEditingController();

//   final _formkey = GlobalKey<FormState>();

//   void Registration(BuildContext context) async {
//     if (password != null && namecontroller.text.isNotEmpty && mailcontroller.text.isNotEmpty) {
//       try {
//         UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
//         ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Registered successfully")));
//         Navigator.push(context, MaterialPageRoute(builder: (context) => farmup()));
//       } on FirebaseAuthException catch (e) {
//         if (e.code == 'weak-password') {
//           ScaffoldMessenger.of(context).showSnackBar(SnackBar(backgroundColor: Colors.green, content: Text("Password provided is too weak")));
//         } else if (e.code == "email-already-in-use") {
//           ScaffoldMessenger.of(context).showSnackBar(SnackBar(backgroundColor: Colors.green, content: Text("Account Already exists")));
//         }
//       }
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Crop2cart', style: TextStyle(color: Color(0xff30D32D), fontSize: 36)),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Center(
//           child: SingleChildScrollView(
//             child: Form(
//               key: _formkey,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 children: [
//                   SizedBox(height: 1),
//                   Text(
//                     'Welcome Onboard',
//                     style: TextStyle(
//                       fontSize: 24,
//                       fontWeight: FontWeight.bold,
//                     ),
//                     textAlign: TextAlign.center,
//                   ),
//                   SizedBox(height: 8),
//                   Text(
//                     'Let’s help you meet up your tasks',
//                     style: TextStyle(fontSize: 16),
//                     textAlign: TextAlign.center,
//                   ),
//                   SizedBox(height: 32),
//                   TextFormField(
//                     validator: (value) {
//                       if (value == null || value.isEmpty) {
//                         return 'Please Enter Name';
//                       }
//                       return null;
//                     },
//                     controller: namecontroller,
//                     decoration: InputDecoration(
//                       labelText: 'Name:',
//                       border: OutlineInputBorder(),
//                       hintText: 'Enter your Name',
//                     ),
//                   ),
//                   SizedBox(height: 16),
//                   TextFormField(
//                     validator: (value) {
//                       if (value == null || value.isEmpty) {
//                         return 'Please Enter Number';
//                       }
//                       return null;
//                     },
//                     controller: phonenocontroller,
//                     decoration: InputDecoration(
//                       labelText: 'Phone Number:',
//                       border: OutlineInputBorder(),
//                       hintText: 'Enter your Phone Number',
//                     ),
//                     keyboardType: TextInputType.phone,
//                   ),
//                   SizedBox(height: 16),
//                   TextFormField(
//                     validator: (value) {
//                       if (value == null || value.isEmpty) {
//                         return 'Please Enter Password';
//                       }
//                       return null;
//                     },
//                     controller: passwordcontroller,
//                     decoration: InputDecoration(
//                       labelText: 'Enter Password',
//                       border: OutlineInputBorder(),
//                       hintText: 'Create a New password',
//                       suffixIcon: Icon(Icons.visibility_off),
//                     ),
//                     obscureText: true,
//                     keyboardType: TextInputType.visiblePassword,
//                   ),
//                   SizedBox(height: 16),
//                   TextFormField(
//                     validator: (value) {
//                       if (value == null || value.isEmpty) {
//                         return 'Please Enter Email';
//                       }
//                       return null;
//                     },
//                     controller: mailcontroller,
//                     decoration: InputDecoration(
//                       labelText: 'Email',
//                       border: OutlineInputBorder(),
//                       hintText: 'email',
//                       suffixIcon: Icon(Icons.mail),
//                     ),
//                     obscureText: false,
//                     keyboardType: TextInputType.emailAddress,
//                   ),
//                   SizedBox(height: 32),
//                   TextFormField(
//                     validator: (value) {
//                       if (value == null || value.isEmpty) {
//                         return 'Please Enter Aadhaar';
//                       }
//                       return null;
//                     },
//                     controller: aadhaarcontroller,
//                     decoration: InputDecoration(
//                       labelText: 'Enter your Aadhaar Number',
//                       border: OutlineInputBorder(),
//                     ),
//                     keyboardType: TextInputType.number,
//                   ),
//                   SizedBox(height: 16),
//                   TextFormField(
//                     validator: (value) {
//                       if (value == null || value.isEmpty) {
//                         return 'Please Enter Kissan';
//                       }
//                       return null;
//                     },
//                     controller: kisanidcontroller,
//                     decoration: InputDecoration(
//                       labelText: 'Enter Kissan Credit Card Number:',
//                       border: OutlineInputBorder(),
//                     ),
//                     keyboardType: TextInputType.number,
//                   ),
//                   SizedBox(height: 16),
//                   TextFormField(
//                     validator: (value) {
//                       if (value == null || value.isEmpty) {
//                         return 'Please Enter State';
//                       }
//                       return null;
//                     },
//                     controller: statefcontroller,
//                     decoration: InputDecoration(
//                       labelText: 'Enter State:',
//                       border: OutlineInputBorder(),
//                     ),
//                   ),
//                   SizedBox(height: 16),
//                   TextFormField(
//                     validator: (value) {
//                       if (value == null || value.isEmpty) {
//                         return 'Please Enter District';
//                       }
//                       return null;
//                     },
//                     controller: districtcontroller,
//                     decoration: InputDecoration(
//                       labelText: 'Enter District:',
//                       border: OutlineInputBorder(),
//                     ),
//                   ),
//                   SizedBox(height: 16),
//                   TextFormField(
//                     validator: (value) {
//                       if (value == null || value.isEmpty) {
//                         return 'Please Enter Address';
//                       }
//                       return null;
//                     },
//                     controller: addresscontroller,
//                     decoration: InputDecoration(
//                       labelText: 'Enter Your Address:',
//                       border: OutlineInputBorder(),
//                     ),
//                   ),
//                   SizedBox(height: 16),
//                   TextFormField(
//                     validator: (value) {
//                       if (value == null || value.isEmpty) {
//                         return 'Please Enter Products';
//                       }
//                       return null;
//                     },
//                     controller: productscontroller,
//                     decoration: InputDecoration(
//                       labelText: 'Products You Sell:',
//                       border: OutlineInputBorder(),
//                     ),
//                   ),
//                   SizedBox(height: 32),
//                   ElevatedButton(
//                     onPressed: () {
//                       setState(() {
//                         name = namecontroller.text;
//                         email = mailcontroller.text;
//                         password = passwordcontroller.text;
//                         phoneno = phonenocontroller.text;
//                         aadhaar = aadhaarcontroller.text;
//                         kisanid = kisanidcontroller.text;
//                         statef = statefcontroller.text;
//                         district = districtcontroller.text;
//                         address = addresscontroller.text;
//                         products = productscontroller.text;
//                       });


//                       Registration(context);
//                     },
//                     child: Text('Register'),
//                     style: ElevatedButton.styleFrom(
//                       foregroundColor: Colors.lightBlueAccent,
//                       padding: EdgeInsets.symmetric(vertical: 16.0),
//                       textStyle: TextStyle(fontSize: 18),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
