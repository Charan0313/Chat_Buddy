
import 'package:chat_buddy/firebase_options.dart';
import 'package:chat_buddy/pages/Login_or_Registerpage.dart';
// import 'package:chat_buddy/pages/Login_or_Registerpage.dart';
import 'package:chat_buddy/pages/auth_gate.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async{
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginOrRegister()
    );
  }
}
