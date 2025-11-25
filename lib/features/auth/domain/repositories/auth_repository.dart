abstract class FirebaseAuthRepositoryInterfaces {
  Future<void> loginInUserWithEmailAndPassword(
      {required String email, required String password});
  Future<void> signUpUserEmailAndPassword(
      {required String email, required String password});
  Future<void> signOutUser();
}
