import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_cash/Utils/constant.dart';
import 'package:my_cash/controllers/API_MANGER/api_manager.dart';
import 'package:my_cash/view/Certification%20center/identity/identity_authentication2.dart';
import 'package:my_cash/controllers/saving_user_details.dart';
import 'package:my_cash/view/splash_screen.dart';

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
      
      theme: ThemeData(fontFamily: "calibril",
       colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: primayColor
          ),
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      // home: Identify2(),
    );
  }
}
