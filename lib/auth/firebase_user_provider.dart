import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class XbcadFirebaseUser {
  XbcadFirebaseUser(this.user);
  final User user;
  bool get loggedIn => user != null;
}

XbcadFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<XbcadFirebaseUser> xbcadFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<XbcadFirebaseUser>((user) => currentUser = XbcadFirebaseUser(user));
