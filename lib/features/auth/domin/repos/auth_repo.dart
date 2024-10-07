import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:fruits_hub/core/errors/failure.dart';
import 'package:fruits_hub/features/auth/domin/entites/user_entity.dart';

abstract class AuthRepo{

  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(BuildContext context,String email, String password,String name);
  Future<Either<Failure, UserEntity>> signinWithEmailAndPassword({required String email, required String password});
  Future<Either<Failure, UserEntity>> signinWithGoogle(BuildContext context);
  Future<Either<Failure,UserEntity>> signinWithFacebook(BuildContext context);
  Future addUserData({required UserEntity user});
    Future saveUserData({required UserEntity user});
  Future <UserEntity> getUserData( {required String uid});
}