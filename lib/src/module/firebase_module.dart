import 'package:babiconsultancy/src/core/config/firebase_options.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

abstract class FirebaseModule {
  static late FirebaseApp app;
  static FirebaseOptions get options => DefaultFirebaseOptions.currentPlatform;
  static FirebaseFirestore get database  => FirebaseFirestore.instance;
  static FirebaseAuth get auth => FirebaseAuth.instanceFor(app: app);


  static Future init() async {
    app = await Firebase.initializeApp(options: options);
    return app;
  }
}