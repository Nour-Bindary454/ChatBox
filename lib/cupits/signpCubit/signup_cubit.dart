import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit() : super(SignupInitial());
   void signup(String email, String password, String confirmPassword) {
    if (password != confirmPassword) {
      // لو كلمة المرور والتأكيد مش زي بعض
      emit(SignupError("Passwords don't match"));
      return;
    }
     FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
    
    emit(SignupSuccess()); 
  }

}
