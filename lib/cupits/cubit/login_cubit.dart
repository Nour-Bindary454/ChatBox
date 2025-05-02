import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
  Future<void> loginwithemailandpassword(
    String email,
    String password,
  ) async {
    try {
      emit(LoginLoading());
      var data = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      emit(LoginSuccess(data.user!.uid));
    } on FirebaseAuthException catch (e) {
      String error;
      if (e.code == 'user-not-found') {
        error = 'No user found for that email.';
      } else if (e.code == 'wrong-password') {
        error = 'Wrong password provided for that user.';
      } else if (e.code == 'credential is incorrect') {
        error = 'Wrong password or email.';
      } else {
        error = e.message!;
      }
      emit(LoginError(error));
    }
  }
}
