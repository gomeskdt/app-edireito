import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class AppRoesleFirebaseUser {
  AppRoesleFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

AppRoesleFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<AppRoesleFirebaseUser> appRoesleFirebaseUserStream() => FirebaseAuth
    .instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<AppRoesleFirebaseUser>(
        (user) => currentUser = AppRoesleFirebaseUser(user));
