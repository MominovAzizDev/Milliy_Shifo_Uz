import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth=FirebaseAuth.instance;

  Future<User?>signUp(String email, String password)async{
    try{
      UserCredential userCredential= await _auth.createUserWithEmailAndPassword(email: email, password: password);
      return userCredential.user;
    }catch(e){
      throw e;
    }
  }

  Future<User?>signIn(String email, String password)async{
    try{
      UserCredential userCredential=await _auth.signInWithEmailAndPassword(email: email, password: password);
      return userCredential.user;
    }catch(e){
      throw e;
    }
  }



  Future<void>sendPasswordResetEmail(String email)async{
    try{
      await _auth.sendPasswordResetEmail(email: email);
    }catch(e){
      throw e;
    }
  }
}