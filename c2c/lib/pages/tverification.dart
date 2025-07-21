import 'package:c2c/pages/tloginpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TVerificationCodePage extends StatelessWidget {
  const TVerificationCodePage({super.key});

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
            // App Title

            SizedBox(height: 10),

            // Verification Code Title
            Text(
              'சரிபார்ப்பு குறியீடு',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 10),

            // Instruction Text
            Text(
              'உங்கள் தொலைபேசி எண்ணிற்கு சரிபார்ப்பு குறியீடு அனுப்பியுள்ளோம்',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
                color: Colors.black54,
              ),
            ),
            SizedBox(height: 40),

            // Verification Code Input
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(4, (index) {
                return SizedBox(
                  width: 50,
                  height: 50,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 24),
                    maxLength: 1,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      counterText: '',
                    ),
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  ),
                );
              }),
            ),
            SizedBox(height: 40),

            // Continue Button
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TRoleSelectionPage()));
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
          ],
        ),
      ),
    );
  }
}
