import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:vira_shop_dz/core/errors/exceptions.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(UserInitial());

  final TextEditingController signInemail = TextEditingController();
  final TextEditingController signInpassword = TextEditingController();
  final GlobalKey<FormState> signInformKey =GlobalKey<FormState>();


  final TextEditingController registerusername = TextEditingController();
  final TextEditingController registeremail = TextEditingController();
  final TextEditingController registerpassword = TextEditingController();
  final TextEditingController registerrole = TextEditingController();
  final GlobalKey<FormState> registerformKey =GlobalKey<FormState>();


  Future<void> signIn() async {
    emit(SignInLoading());
    try {
      await Future.delayed(Duration(seconds: 2));

      emit(SignInSuccess());
    } on ServerException catch (e) {
      emit(SignInFailure(errMessage: e.errorModel.errorMessage));
    }
  }

  Future<void> register() async {
    emit(RegisterLoading());
    try {



      await Future.delayed(Duration(seconds: 2));



      emit(RegisterSuccess());
    } on ServerException catch (e) {
      emit(SignInFailure(errMessage: e.errorModel.errorMessage));
    }
  }
}
