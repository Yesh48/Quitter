import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyA00LIYlnzxn9IAT2aXBhlmv4F6bzbkCTs",
            authDomain: "quitter-dev.firebaseapp.com",
            projectId: "quitter-dev",
            storageBucket: "quitter-dev.appspot.com",
            messagingSenderId: "744258483226",
            appId: "1:744258483226:web:9cf58cd54e265c7c0ecda3",
            measurementId: "G-701EZG8JWS"));
  } else {
    await Firebase.initializeApp();
  }
}
