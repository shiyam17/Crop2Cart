
import 'package:firebase_auth/firebase_auth.dart';

class AuthServices{
  final _autht = FirebaseAuth.instance;

  Future<User?> createUserWithEmailAndPassword(String email,String password)async{
  try{
    final cred = await _autht.createUserWithEmailAndPassword(email: email, password: password);
  return cred.user;
  } catch(e){}
  return null;
  }
  Future<User?> loginUserWithEmailAndPassword(String email,String password)async{
  try{
    final cred = await _autht.signInWithEmailAndPassword(email: email, password: password);
  return cred.user;
  } catch(e){}
  return null;
  }
}