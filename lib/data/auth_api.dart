

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:temeflutter/models/auth/app_user.dart';

class AuthApi{
  AuthApi({required FirebaseAuth auth,required FirebaseFirestore firestore})
      :assert(auth != null),
        assert(firestore != null),
        _auth = auth,
        _firestore=firestore;

  final FirebaseAuth _auth;
  final FirebaseFirestore _firestore;

  Future<AppUser> initializeApp() async {
    final user = _auth.currentUser;

    final DocumentSnapshot<Map<String, dynamic>> snapshot = await _firestore.doc('user/${user?.uid}').get();

    return AppUser.fromJson(snapshot.data());
  }

  Future<AppUser> login({required String email,required String password}) async{
    final UserCredential result= await _auth.signInWithEmailAndPassword(email: email, password: password);

    final DocumentSnapshot snapshot = await _firestore.doc('users/${result.user?.uid}').get();


    return AppUser.fromJson(snapshot.data());

  }

  Future<AppUser> register({required String email, required String password, required String displayName}) async{
    final UserCredential result = await _auth.createUserWithEmailAndPassword(email: email, password: password);

    final AppUser appUser = AppUser((b){
      b..email = result.user?.email
        ..uid=result.user?.uid
        ..displayName = displayName;
    });

    await _firestore.doc('users/${result.user?.uid}').set(appUser.json);

    return appUser;
  }

  Future<void> forgotPassword(String email) async{
    await _auth.sendPasswordResetEmail(email: email);

  }

  Future<void> logOut() async{
    await _auth.signOut();
  }


}