// import 'package:c2c/pages/chat.dart';
// import 'package:flutter/material.dart';

// class rNegotiationPage extends StatefulWidget {
//   @override
//   _NegotiationPageState createState() => _NegotiationPageState();
// }

// class _NegotiationPageState extends State<rNegotiationPage> {
//   double _currentRangeValue = 30;
//   int _selectedOption = 0; // 0: None, 1: Range, 2: Call/Chat
//   bool _isFarmerOnline = true; // Just a placeholder for the farmer online status

//   TextEditingController _minController = TextEditingController(text: '25');
//   TextEditingController _maxController = TextEditingController(text: '35');

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Negotiation Page'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             ListTile(
//               title: Text("Range"),
//               leading: Radio(
//                 value: 1,
//                 groupValue: _selectedOption,
//                 onChanged: (int? value) {
//                   setState(() {
//                     _selectedOption = value!;
//                   });
//                 },
//               ),
//             ),
//             if (_selectedOption == 1)
//               Column(
//                 children: [
//                   Text(
//                     'Range Slider',
//                     style: TextStyle(
//                       color: Colors.red,
//                       fontSize: 16,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   Slider(
//                     value: _currentRangeValue,
//                     min: double.parse(_minController.text),
//                     max: double.parse(_maxController.text),
//                     divisions: 10,
//                     label: 'Rs ${_currentRangeValue.round()}',
//                     onChanged: (double value) {
//                       setState(() {
//                         _currentRangeValue = value;
//                       });
//                     },
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Container(
//                         width: 70,
//                         child: TextField(
//                           controller: _minController,
//                           keyboardType: TextInputType.number,
//                           decoration: InputDecoration(labelText: 'Min'),
//                           onChanged: (value) {
//                             setState(() {});
//                           },
//                         ),
//                       ),
//                       Container(
//                         width: 70,
//                         child: TextField(
//                           controller: _maxController,
//                           keyboardType: TextInputType.number,
//                           decoration: InputDecoration(labelText: 'Max'),
//                           onChanged: (value) {
//                             setState(() {});
//                           },
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ListTile(
//               title: Text("Call/Chat"),
//               leading: Radio(
//                 value: 2,
//                 groupValue: _selectedOption,
//                 onChanged: (int? value) {
//                   setState(() {
//                     _selectedOption = value!;
//                   });
//                 },
//               ),
//             ),
//             if (_selectedOption == 2)
//               Column(
//                 children: [
//                   Row(
//                     children: [
//                       Icon(Icons.person, color: _isFarmerOnline ? Colors.green : Colors.red),
//                       Text(
//                         "Farmer Online",
//                         style: TextStyle(
//                           color: Colors.black,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: 10),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       ElevatedButton(
//                         onPressed: _isFarmerOnline ? () => _makeCall() : null,
//                         child: Text('Call'),
//                       ),
//                       ElevatedButton(
//                         onPressed: () {
//                         Navigator.push(context, MaterialPageRoute(builder: (context) => chat()));
//                         },
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//           BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorites'),
//           BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Cart'),
//         ],
//       ),
//     );
//   }

//   void _makeCall() {
//     // Logic to make a call
//     print('Calling...');
//   }

//   void _sendText() {
//     // Logic to send a text message
//     print('Sending Text...');
//   }
// }
import 'package:c2c/pages/chat.dart';
import 'package:flutter/material.dart';
// Update the import to the new page

class rNegotiationPage extends StatefulWidget {
  const rNegotiationPage({super.key});

  @override
  _NegotiationPageState createState() => _NegotiationPageState();
}

class _NegotiationPageState extends State<rNegotiationPage> {
  double _currentRangeValue = 30;
  int _selectedOption = 0; // 0: None, 1: Range, 2: Call/Chat
  final bool _isFarmerOnline =
      true; // Just a placeholder for the farmer online status

  final TextEditingController _minController =
      TextEditingController(text: '25');
  final TextEditingController _maxController =
      TextEditingController(text: '35');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Negotiation Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ListTile(
              title: Text("Range"),
              leading: Radio(
                value: 1,
                groupValue: _selectedOption,
                onChanged: (int? value) {
                  setState(() {
                    _selectedOption = value!;
                  });
                },
              ),
            ),
            if (_selectedOption == 1)
              Column(
                children: [
                  Text(
                    'Range Slider',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Slider(
                    value: _currentRangeValue,
                    min: double.parse(_minController.text),
                    max: double.parse(_maxController.text),
                    divisions: 10,
                    label: 'Rs ${_currentRangeValue.round()}',
                    onChanged: (double value) {
                      setState(() {
                        _currentRangeValue = value;
                      });
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 70,
                        child: TextField(
                          controller: _minController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(labelText: 'Min'),
                          onChanged: (value) {
                            setState(() {});
                          },
                        ),
                      ),
                      SizedBox(
                        width: 70,
                        child: TextField(
                          controller: _maxController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(labelText: 'Max'),
                          onChanged: (value) {
                            setState(() {});
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ListTile(
              title: Text("Call/Chat"),
              leading: Radio(
                value: 2,
                groupValue: _selectedOption,
                onChanged: (int? value) {
                  setState(() {
                    _selectedOption = value!;
                  });
                },
              ),
            ),
            if (_selectedOption == 2)
              Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.person,
                          color: _isFarmerOnline ? Colors.green : Colors.red),
                      Text(
                        "Farmer Online",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: _isFarmerOnline ? () => _makeCall() : null,
                        child: Text('Call'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    chat()), // Update to new page
                          );
                        },
                        child: Text('text'),
                      ),
                    ],
                  ),
                ],
              ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favorites'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Cart'),
        ],
      ),
    );
  }

  void _makeCall() {
    // Logic to make a call
    print('Calling...');
  }

  void _sendText() {
    // Logic to send a text message
    print('Sending Text...');
  }
}
