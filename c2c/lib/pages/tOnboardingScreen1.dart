import 'package:c2c/pages/Rlogin2.dart';
import 'package:flutter/material.dart';

class TRLogin extends StatelessWidget {
  const TRLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('உள்நுழைக'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 20),
              Center(
                child: Text(
                  'Crop2Cart',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Center(
                child: Text(
                  'உள்ளே வருக',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: Text(
                  "உங்கள் பணிகளைச் செய்ய உதவுவோம்",
                  style: TextStyle(fontSize: 14, color: Colors.black54),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  labelText: 'பயனர்பெயரை உருவாக்கவும்:',
                 hintText: 'உங்கள் பெயரை உள்ளிடவும்',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: 'தொலைபேசி எண்:',
                  hintText: 'உங்கள் தொலைபேசி எண்ணை உள்ளிடவும்:',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'பின் எண்ணை உள்ளிடவும்',
                  hintText: 'புதிய பின் எண்ணை உருவாக்கவும்',
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.visibility_off),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'பின் எண்ணை மீண்டும் உள்ளிடவும்',
                  hintText: 'பின் எண்ணை மீண்டும் உள்ளிடவும்',
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.visibility_off),
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Rlogin2(),),);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlueAccent,
                  padding: EdgeInsets.symmetric(vertical: 15),
                  textStyle: TextStyle(fontSize: 16),
                ),
                child: Text('அடுத்து'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
