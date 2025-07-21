import 'package:flutter/material.dart';



class TCommunityPage extends StatelessWidget {
  const TCommunityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'உங்கள் சமூகத்தில் சேரவும்',
              style: TextStyle(
                fontSize: 24.0,
                color:Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'உங்கள் சமூகத்தைப் பார்த்து அதில் சேரவும் மற்றும் அருகிலுள்ள அனைத்து விவசாயிகளுடன் இணையவும்',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 24.0),
            Container(
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                children: [
                  Icon(
                    Icons.person,
                    size: 64.0,
                    color: Colors.grey,
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'சமூக விளக்கம் மற்றும் விவரங்கள்',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16.0, color: Colors.grey),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: () {
                // Join Community1 action
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
                //primary: Colors.lightBlueAccent,
              ),
              child: Text(
                'சமூகத்தில் சேரவும்',
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}