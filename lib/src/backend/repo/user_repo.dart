import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class UserRepo {
  final FirebaseFirestore database;
  final FirebaseAuth auth;

  const UserRepo({
    required this.database,
    required this.auth
  });
}


class UserRepoImpl extends UserRepo {
  UserRepoImpl({required super.database, required super.auth});
}
