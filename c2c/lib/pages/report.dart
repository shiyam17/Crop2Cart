import 'package:flutter/material.dart';


class ReportScreen extends StatelessWidget {
  const ReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: IconButton(
      //     icon: Icon(Icons.menu),
      //     onPressed: () {
      //       // Add functionality here
      //     },
      //   ),
      //   title: Text('Reports'),
      //   actions: [
      //     IconButton(
      //       icon: Icon(Icons.person),
      //       onPressed: () {
      //         // Add functionality here
      //       },
      //     ),
      //   ],
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildUserCard(),
                  _buildUserCard(),
                  _buildUserCard(),
                ],
              ),
              SizedBox(height: 65),
              _buildProductHistoryCard(),
              SizedBox(height: 180),
              _buildRangeSelector(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildUserCard() {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          child: Icon(Icons.person, size: 40),
        ),
        SizedBox(height: 8),
        Text('Sells at'),
      ],
    );
  }

  Widget _buildProductHistoryCard() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Icon(Icons.eco, size: 40),
              SizedBox(height: 16),
              Icon(Icons.eco, size: 40),
              SizedBox(height: 16),
              Icon(Icons.eco, size: 40),
            ],
          ),
          Expanded(
            child: Center(
              child: Text(
                'Last week product history',
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRangeSelector() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Enter Range of your preference:'),
        SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              onPressed: () {
                // Add functionality here
              },
              child: Text('Start'),
            ),
            ElevatedButton(
              onPressed: () {
                // Add functionality here
              },
              child: Text('End'),
            ),
          ],
        ),
      ],
    );
  }
}
