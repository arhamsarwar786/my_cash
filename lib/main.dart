import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_cash/controllers/GlobalState.dart';
import 'package:my_cash/view/splash_screen.dart';
import 'package:my_cash/controllers/saving_user_details.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  if (FirebaseAuth.instance.currentUser != null) {
    saveUserGlobally();
  }
    // GlobalState.setPostPackageDetails();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "calibril"),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
