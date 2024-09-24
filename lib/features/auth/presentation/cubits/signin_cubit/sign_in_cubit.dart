import 'package:flutter/material.dart';
import'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/features/auth/domin/entites/user_entity.dart';
import 'package:fruits_hub/features/auth/domin/repos/auth_repo.dart';
import 'package:meta/meta.dart';

part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit(this.authRepo) : super(SignInInitial());
  final AuthRepo authRepo ;

  Future<void> signInWithEmailAndPassword({required String email, required String password}) async {
    emit(SignInLoading());
    final resault = await authRepo.signinWithEmailAndPassword(email: email, password: password);
    resault.fold((failure) {
      emit(SignInFailure(message: failure.message));
    }, (userEntity) {
      emit(SignInSuccess(userEntity: userEntity));
    });
  } 
  
  Future<void> signInWithGoogle(BuildContext context) async {
    emit(SignInLoading());
    final resault = await authRepo.signinWithGoogle( context);
    resault.fold((failure) {
      emit(SignInFailure(message: failure.message));
    }, (userEntity) {
      emit(SignInSuccess(userEntity: userEntity));
    });
  }

  Future<void> signInWithFacebook(BuildContext context) async {
    emit(SignInLoading());
    final resault = await authRepo.signinWithFacebook( context);
    resault.fold((failure) {
      emit(SignInFailure(message: failure.message));
    }, (userEntity) {
      emit(SignInSuccess(userEntity: userEntity));
    });
  }
}
