// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:c2c/pages/langset.dart';

// class Loadingpage extends StatelessWidget {
//   const Loadingpage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         //children: [SizedBox(width: 380,),Image.asset('assets/Logo.png'),Text('Crop2cart',style: TextStyle(color: Color(0xff30D32D),fontSize: 36,fontWeight: FontWeight.w600))],
//         children: [SizedBox(width: 390),Container(child: Image(image: AssetImage('assets/icons/Logo.png'),height: 360,width: 280,),),Container(child: Text('Crop2Cart',style: TextStyle(color: Color(0xff30D32D),fontSize: 36,fontWeight: FontWeight.w600)))],
//       ),
//     );
    
//   }
//}
class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> with SingleTickerProviderStateMixin {
  
  @override
  void initState() {
        super.initState();
        SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
        
        
        Future.delayed(Duration(seconds: 2), () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>  LanguageSelectionScreen()));
        });
        
  }

  @override
  void dispose() {
    super.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
    overlays: SystemUiOverlay.values);
  }
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //children: [SizedBox(width: 380,),Image.asset('assets/Logo.png'),Text('Crop2cart',style: TextStyle(color: Color(0xff30D32D),fontSize: 36,fontWeight: FontWeight.w600))],
        children: [SizedBox(width: 390),Container(child: Image(image: AssetImage('assets/icons/Logo.png'),height: 360,width: 280,),),Container(child: Text('Crop2Cart',style: TextStyle(color: Color(0xff30D32D),fontSize: 36,fontWeight: FontWeight.w600)))],
      ),
    );
  }
}
