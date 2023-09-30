// import 'package:acyuta/pages/home_page.dart';
// import 'package:acyuta/pages/loginpage.dart';
// import 'package:acyuta/pages/forecast.dart';
import 'package:acyuta/pages/loginpage.dart';
// import 'package:acyute/pages/loginpage.dart';
// import 'package:acyuta/pages/manualinput.dart';
// import 'package:acyuta/pages/preferences.dart';
// import 'package:acyuta/pages/manualinput.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/foundation.dart';
// import 'package:acyuta/pages/upload.dart';
import 'package:flutter/material.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // if (kIsWeb) {
  //   Firebase.initializeApp(
  //     options: const FirebaseOptions(
  //         apiKey: "AIzaSyAnk0-khbGlCKfF4H89ct3OXHJEDPQogNg",
  //         appId: "1:383612574102:web:f65162e7770e6e4f72a5b7",
  //         messagingSenderId: "383612574102",
  //         projectId: "acyuta",
  //         storageBucket: "acyuta.appspot.com"),
  //   );
  // }
  // await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      
      title: "अच्युता",
      theme: ThemeData.dark(useMaterial3: true),
      
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),

      // home: const ForeCast()
    );
  }
}
