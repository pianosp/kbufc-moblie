import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAB5nfchAgElj3hH_x5xCsOtd2d1_3gQVI",
            authDomain: "memberinfo-b267a.firebaseapp.com",
            projectId: "memberinfo-b267a",
            storageBucket: "memberinfo-b267a.appspot.com",
            messagingSenderId: "279654255011",
            appId: "1:279654255011:web:c5a1563a872ccc2d737216",
            measurementId: "G-181LEYWLET"));
  } else {
    await Firebase.initializeApp();
  }
}
