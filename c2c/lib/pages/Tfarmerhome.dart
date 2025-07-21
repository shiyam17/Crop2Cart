import 'package:flutter/material.dart';

class TfarHomePage extends StatefulWidget {
  const TfarHomePage({super.key});

  @override
  State<TfarHomePage> createState() => _HomePageState();
}

class _HomePageState extends State<TfarHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Column(
                  children: [
                    _buildProfileIcon(),
                    SizedBox(height: 16),
                    _buildProfileIcon(),
                    SizedBox(height: 16),
                    _buildProfileIcon(),
                  ],
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Container(
                    height: 150,
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text(
                        'உங்கள் லாபம்',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 32),
            Text(
              'உங்கள் சரக்கு',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Expanded(
              child: GridView.builder(
                itemCount: 6,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                ),
                itemBuilder: (context, index) {
                  return _buildInventoryItem();
                },
              ),
            ),
          ],
        ),
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
