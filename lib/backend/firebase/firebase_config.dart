import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBeLwIvlL7TYSxCvvzBzYU5Y30OTS-WQdM",
            authDomain: "upcjgatherapp.firebaseapp.com",
            projectId: "upcjgatherapp",
            storageBucket: "upcjgatherapp.appspot.com",
            messagingSenderId: "781432484175",
            appId: "1:781432484175:web:b62d30aeb403b77818d53a"));
  } else {
    await Firebase.initializeApp();
  }
}
