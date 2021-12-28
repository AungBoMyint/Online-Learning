import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@injectable
class CurrentUser {
  final FirebaseAuth _firebaseAuth;
  CurrentUser(this._firebaseAuth);

  User? getCurrentUserId() {
    return _firebaseAuth.currentUser;
  }
}
