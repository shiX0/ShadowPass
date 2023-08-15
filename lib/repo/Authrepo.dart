import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../Services/firebase_services.dart';
import '../models/UserModel.dart';

class AuthRepository{
  CollectionReference<UserModel> userRef = FirebaseService.db.collection("User")
      .withConverter<UserModel>(
    fromFirestore: (snapshot, _) {
      return UserModel.fromFirebaseSnapshot(snapshot);
    },
    toFirestore: (model, _) => model.toJson(),
  );
  Future<UserCredential?> register(UserModel user) async {
  }


  Future<UserCredential> login(String email, String password) async {
    try {
      UserCredential uc = await FirebaseService.firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);
      return uc;
    } catch (err) {
      rethrow;
    }
  }

  Future<UserModel> getUserDetail(String? id) async {
    try {
      final response = await userRef
          .where("id", isEqualTo: id).get();
      var user = response.docs.first.data();
      return user;
    } catch (err) {
      rethrow;
    }
  }
  Future<dynamic> addUserDetails(UserModel data)async{
    try{
      final user=await userRef.add(data);
      return user;
    }catch(e){
      rethrow;
    }
  }

  Future<void> updateUserDetail(String? id, UserModel data) async{
    try{
      await userRef.doc(id).set(data);
    }catch(e){rethrow;}
  }
  Future<void> deleteUserDetail(String? id) async{
    try{
      await userRef.doc(id).delete();
    }catch(e){
      rethrow;
    }
  }

  Future<bool> resetPassword(String email) async {
    try {
      var res = await FirebaseService.firebaseAuth
          .sendPasswordResetEmail( email: email);
      return true;
    } catch (err) {
      rethrow;
    }
  }


  Future<void> logout() async {
    try {
      await FirebaseService.firebaseAuth.signOut();
    } catch (err) {
      rethrow;
    }
  }
}