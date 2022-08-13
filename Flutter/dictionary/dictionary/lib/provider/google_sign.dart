import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleSigninProvider extends ChangeNotifier {
  final googleSignIn = GoogleSignIn();
  GoogleSignIn? _user;
  // GoogleSignInAccount get user => _user;
}
