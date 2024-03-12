
import 'package:babiconsultancy/src/backend/handler/app_result.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

extension FireStoreHandler on FirebaseFirestore {
  Future<AppResult<T>> exec<T>({
    String collection = "",
    String doc = "",
    T Function(Map<String,dynamic>)? mapper,
  }) async {
    final collectionRef = this.collection(collection);
    final documentRef = await collectionRef.doc(doc).get();
    if(documentRef.data() == null || mapper == null) return AppResult.error("document not found");
    return AppResult.success(mapper.call(documentRef.data()!));
  }
}