import 'package:c2c/pages/tfupload.dart';
import 'package:flutter/material.dart';
import 'package:c2c/pages/services/auth.dart';

class TOnboardingScreen extends StatelessWidget {
  final _autht = AuthServices();
  final _name = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();

  TOnboardingScreen({super.key});
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
                  'குழுவில் வரவேற்கிறோம்',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 8),
                Text(
                  'உங்கள் பணிகளைச் செய்ய உதவுவோம்',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 32),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'பெயர்:',
                    border: OutlineInputBorder(),
                    hintText: 'உங்கள் பெயரை உள்ளிடவும்',
                  ),
                ),
                SizedBox(height: 16),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'உங்கள் தொலைபேசி எண்ணை உள்ளிடவும்',
                    border: OutlineInputBorder(),
                    hintText: 'புதிய பின் எண்ணை உருவாக்கவும்',
                  ),
                  keyboardType: TextInputType.phone,
                ),
                SizedBox(height: 16),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'பின் எண்ணை மீண்டும் உள்ளிடவும்',
                    border: OutlineInputBorder(),
                    hintText: 'புதிய பின் எண்ணை உருவாக்கவும்',
                    suffixIcon: Icon(Icons.visibility_off),
                  ),
                  obscureText: true,
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 16),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'மின்னஞ்சல்',
                    border: OutlineInputBorder(),
                    hintText: 'உங்கள் மின்னஞ்சலை உள்ளிடவும்',
                    suffixIcon: Icon(Icons.mail),
                  ),
                  obscureText: false,
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: 32),
                // ElevatedButton(
                //   onPressed: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) => RegistrationScreen()));
                //   },
                //   child: Text('Next'),
                //   style: ElevatedButton.styleFrom(
                //     foregroundColor: Colors.lightBlueAccent,
                //     padding: EdgeInsets.symmetric(vertical: 16.0),
                //     textStyle: TextStyle(fontSize: 18),
                //   ),
                //),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'உங்கள் ஆதார் எண்ணை உள்ளிடவும்',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 16),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'கிசான் கிரெடிட் கார்டு எண்',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 16),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'உங்கள் மாநில பெயரை உள்ளிடவும்',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 16),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'உங்கள் மாவட்ட பெயரை உள்ளிடவும்',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 16),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'உங்கள் முகவரியை உள்ளிடவும்',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 16),
                TextField(
                  decoration: InputDecoration(
                    labelText: '- உங்கள் தயாரிப்புகளை உள்ளிடவும்',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 32),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Tfarmup(),
                      ),
                    );
                  },
                  // ignore: sort_child_properties_last
                  child: Text('பதிவு செய்யுங்கள்'),
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
