import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/features/auth/domin/entites/user_entity.dart';
import 'package:fruits_hub/features/auth/domin/repos/auth_repo.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit(this.authRepo) : super(SignupInitial());
  final AuthRepo authRepo ;

  Future<void> createUserWithEmailAndPassword( BuildContext context ,String email, String password,String name) async {
    emit(SignupLoading());
    final resault = await authRepo.createUserWithEmailAndPassword(
       context,
       email, password,name);
     resault.fold((failure) {
       emit(SignupFailure(message: failure.message));
     }, (userEntity) {
       emit(SignupSuccess(userEntity: userEntity));
     });
  }
}
