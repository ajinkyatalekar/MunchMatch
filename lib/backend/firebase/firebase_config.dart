import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDu-RmU816Fi1ucdo-IBhvkg5aEXVVFMaA",
            authDomain: "munchmatch-44b5f.firebaseapp.com",
            projectId: "munchmatch-44b5f",
            storageBucket: "munchmatch-44b5f.appspot.com",
            messagingSenderId: "450331462863",
            appId: "1:450331462863:web:c1096fce471447f6fffbba",
            measurementId: "G-B728YEWLF2"));
  } else {
    await Firebase.initializeApp();
  }
}
