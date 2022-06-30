import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_cash/Screen/authentication/register_screen.dart';

import 'Screen/MainPage/Home.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        fontFamily: "calibril"
      ),
      debugShowCheckedModeBanner: false,
      home: RegisterScreen(),
    );
  }
}
