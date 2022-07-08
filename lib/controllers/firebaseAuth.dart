import 'package:firebase_auth/firebase_auth.dart';



registerUser() {
FirebaseAuth auth = FirebaseAuth.instance;
  auth.verifyPhoneNumber(
      phoneNumber: "+923144325427",
      verificationCompleted: ( phoneAuth) {
        print("Token Here : ${phoneAuth.token}");
      },
      verificationFailed: ( e) {
        print(e.message);
      },
      codeSent: (String verificationId, [int? forceResendingToken]) {
        print("Code here : $verificationId");
        print(forceResendingToken);
      },
      codeAutoRetrievalTimeout: (String verificationId) {
        verificationId = verificationId;
        print(verificationId);
        print("Timout");
      });
}
