import 'package:c2c/pages/OnboardingScreen1.dart';
import 'package:c2c/pages/conboard.dart';
import 'package:c2c/pages/farmerreg.dart';
import 'package:flutter/material.dart';


class RoleSelectionPage extends StatelessWidget {
  const RoleSelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Crop2cart',style: TextStyle(color: Color(0xff30D32D),fontSize: 36)),),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // App Title
            SizedBox(height: 40),

            // Icons Row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                Container(child: Image(image: AssetImage('assets/icons/loginpage.png'),height: 310,width: 310,),)
              ],
            ),
            SizedBox(height: 40),

            // Role Selection Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => OnboardingScreen()));

                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green[100],
                    foregroundColor: Colors.black,
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text('Farmer'),
                ),
                ElevatedButton(
                  onPressed: () {
Navigator.push(context, MaterialPageRoute(builder: (context) => RLogin()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green[100],
                    foregroundColor: Colors.black,
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text('Retailer'),
                ),
              ],
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => cLogin()));

              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green[100],
                foregroundColor: Colors.black,
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text('Consumer'),
            ),
            SizedBox(height: 40),

          ],
        ),
      ),
    );
  }
}
