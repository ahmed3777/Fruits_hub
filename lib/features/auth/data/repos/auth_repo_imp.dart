import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fruits_hub/core/errors/exceptions.dart';
import 'package:fruits_hub/core/errors/failure.dart';
import 'package:fruits_hub/core/services/database_services.dart';
import 'package:fruits_hub/core/services/firebase_auth_services.dart';
import 'package:fruits_hub/core/utils/backend_endpoint.dart';
import 'package:fruits_hub/features/auth/domin/entites/user_entity.dart';
import 'package:fruits_hub/features/auth/domin/repos/auth_repo.dart';
import 'package:fruits_hub/generated/l10n.dart';
import '../models/user_model.dart';

class AuthRepoImp extends AuthRepo{

  final FirebaseAuthService firebaseAuthService;
  final DatabaseServices databaseServices;

  AuthRepoImp({required this.databaseServices,required this.firebaseAuthService});

  @override
   Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword( 
       BuildContext context,
       String email, String password, String name) async {
        User? user;
    try {
       user = await firebaseAuthService.createUserWithEmailAndPassword(
        email: email,
        password: password,
         context: context);
        UserEntity userEntity = UserEntity(email: email, 
        uId: user.uid, 
        name: name);
        await addUserData(user: userEntity);
        return right( userEntity);
      
    } on CustomException catch (e) {
      await deleteUser(user);
      return left(ServerFailure(message: e.message));
    }catch(e){
            await deleteUser(user);
    log(' Exception in AuthRepoImp.createUserWithEmailAndPassword ${e.toString()}');
    return left(ServerFailure(message:S.of(context).defultErrorMessage));
  }
  }

  Future<void> deleteUser(User? user) async {
    if(user!=null){
      await firebaseAuthService.deleteUser();
    }
  }


  @override
   Future<Either<Failure, UserEntity>>signinWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      var user = await firebaseAuthService.signInWithEmailAndPassword(
        email: email,
        password: password,);
        var userEntity = await getUserData(uid: user.uid);
        return right(userEntity);
    } on CustomException catch (e) {
      return left(ServerFailure(message: e.message));
  }catch(e){
    log(' Exception in AuthRepoImp.signInWithEmailAndPassword ${e.toString()}');
} 
    return left(ServerFailure(message:"لقد حدث خطأ ما الرجاء المحاولة مرة اخرى."));
  }
  
  @override
  Future<Either<Failure, UserEntity>> signinWithGoogle(BuildContext context) async {
    User? user;
    try {
       user = await firebaseAuthService.signInWithGoogle();
       var userEntity =UserModel.fromFirebaseUser(user); 
       var isUserExist = await databaseServices.ifDataExists(
        path: BackendEndpoint.isUserExist, documentId: user.uid);
       if(!isUserExist){
         await addUserData(user: userEntity);
       }else{
         await getUserData(uid: user.uid);
       }
      return right(userEntity);
    } catch(e){
      await deleteUser(user);
      log(' Exception in AuthRepoImp.signInWithGoogle ${e.toString()}');
    }
    return left(ServerFailure(message: S.of(context).defultErrorMessage));
  }
  
  @override
  Future<Either<Failure, UserEntity>> signinWithFacebook(BuildContext context)  async {
    User? user;
   try {
       user = await firebaseAuthService.signInWithFacebook();
      var userEntity =UserModel.fromFirebaseUser(user); 
      var isUserExist = await databaseServices.ifDataExists(
        path: BackendEndpoint.isUserExist, documentId: user.uid);
      if(!isUserExist){
        await addUserData(user: userEntity);
      }else{
        await getUserData(uid: user.uid);
      }
      return right(userEntity);
    } catch(e){
      await deleteUser(user);
      log(' Exception in AuthRepoImp.signInWithFacebook ${e.toString()}');
    }
    return left(ServerFailure(message:S.of(context).defultErrorMessage));
  }
  
  @override
  Future addUserData({required UserEntity user}) async {
    await databaseServices.addData(
      path: BackendEndpoint.addUserData ,
     data: user.toMap(),
      documentId: user.uId,
     );
  }
  
  @override
  Future<UserEntity> getUserData({required String uid}) async {
    var userData =await databaseServices.getData(
      path: BackendEndpoint.getUserData, documentId: uid);
    return UserModel.fromJson(userData);
  }
    
 
     
}