import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_cash/task.dart';
import 'package:my_cash/view/home/home_screen.dart';
import 'package:my_cash/view/splash_screen.dart';
import '/view/authentication/register_screen.dart';
import 'package:my_cash/controllers/saving_user_details.dart';

import 'controllers/GlobalState.dart';


Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  saveUserGlobally();
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
      home: SplashScreen(),
    );
  }
}
