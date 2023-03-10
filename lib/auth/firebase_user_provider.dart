import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class UpcjGatherAppFirebaseUser {
  UpcjGatherAppFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

UpcjGatherAppFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<UpcjGatherAppFirebaseUser> upcjGatherAppFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<UpcjGatherAppFirebaseUser>(
      (user) {
        currentUser = UpcjGatherAppFirebaseUser(user);
        return currentUser!;
      },
    );
