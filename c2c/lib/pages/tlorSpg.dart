import 'package:c2c/pages/tloginpage.dart';
import 'package:c2c/pages/tverification.dart';
import 'package:flutter/material.dart';

class TLoginPage extends StatelessWidget {
  const TLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Crop2Cart',
          style: TextStyle(color: Color(0xff30D32D), fontSize: 36),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // App Logo or Title

            SizedBox(height: 10),

            // Login or Sign-in Text
            Text(
              'உள்நுழைய or பதிவு',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 20),

            // Phone Number Input
            Row(
              children: [
                // Country Code Dropdown (for simplicity, use a single code)
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: DropdownButton<String>(
                    value: '+91',
                    items: <String>['+91']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (_) {},
                    underline: SizedBox(),
                  ),
                ),
                SizedBox(width: 10),
                // Phone Number TextField
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      hintText: 'தொலைபேசி எண்',
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),

            // Continue Button
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TVerificationCodePage()));
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 15),
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text('தொடரவும்'),
            ),
            SizedBox(height: 10),

            // Or Text
            Text('அல்லது', style: TextStyle(fontSize: 16)),

            // Continue with Google Button
            OutlinedButton.icon(
              onPressed: () {},
              icon: Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/4/4a/Logo_2013_Google.png',
                width: 24,
                height: 24,
              ),
              label: Text('கூகுளில் தொடரவும்'),
              style: OutlinedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 15),
                minimumSize: Size(double.infinity, 50),
                side: BorderSide(color: Colors.grey),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            SizedBox(height: 10),

            // Sign Up Text
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TRoleSelectionPage()));
              },
              child: Text(
                "கணக்கு இல்லையா? பதிவு செய்யவும்",
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
