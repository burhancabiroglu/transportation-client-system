import 'package:babiconsultancy/src/core/config/firebase_options.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class FirebaseModule {
  static FirebaseOptions get options => DefaultFirebaseOptions.currentPlatform;
  static FirebaseFirestore get database  => FirebaseFirestore.instance;

  static Future init() async {
    return await Firebase.initializeApp(options: options);
  }

  FirebaseModule._();
}