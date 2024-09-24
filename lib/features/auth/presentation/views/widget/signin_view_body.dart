import 'dart:io' as Platform;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/utils/assets.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/core/widgets/custom_textfield.dart';
import 'package:fruits_hub/core/widgets/password_field.dart';
import 'package:fruits_hub/features/auth/presentation/cubits/signin_cubit/sign_in_cubit.dart';
import 'package:fruits_hub/features/auth/presentation/views/signup_view.dart';
import 'package:fruits_hub/features/auth/presentation/views/widget/dont_have_an_account.dart';
import 'package:fruits_hub/features/auth/presentation/views/widget/or_divider.dart';
import 'package:fruits_hub/features/auth/presentation/views/widget/social_login_button.dart';
import 'package:fruits_hub/generated/l10n.dart';
class SignInViewBody extends StatefulWidget {
  const SignInViewBody({super.key});

  @override
  State<SignInViewBody> createState() => _SignInViewBodyState();
}

class _SignInViewBodyState extends State<SignInViewBody> {
  final _formKey = GlobalKey<FormState>();
  late String email , password;
   AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Form(
          key: _formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 24,),
              CustomTextFormField(hintText: S.of(context).email,keyboardType: TextInputType.emailAddress,
               onSaved: (value ) {
                email=value!;
                   },),
              const SizedBox(height: 16,),
              PasswordField(hintText: S.of(context).password, onSaved: (value ) { 
                password=value!;
               },),
              const SizedBox(height: 16,),
              Align(alignment:AlignmentDirectional.bottomEnd,
                child: TextButton(onPressed: (){}, child: Text(S.of(context).forgetPassword,
                style: TextStyles.regular16.copyWith(color: AppColors.primaryColor),
                ))),
              const SizedBox(height: 20,),
              CustomButton(onPressed: (){
                if(_formKey.currentState!.validate()){
                  _formKey.currentState!.save();
                  context.read<SignInCubit>().signInWithEmailAndPassword(email: email, password: password);
                }

              }, text: S.of(context).login),
              const SizedBox(height: 30,),
               DontHaveAnAccountWidget(text1: S.of(context).doUnregister,
               text2:S.of(context).createAccount,
               onTap:() => Navigator.of(context).pushNamed(SignUpView.routeName),),
               const SizedBox(height: 30,),
               const OrDividerWidget(),
               const SizedBox(height: 16,),
               SocialLoginButton(image:Assets.assetsImagesGoogleIcon,title: S.of(context).loginWithGoogle,
                             onPressed: (){ context.read<SignInCubit>().signInWithGoogle(context);}),  
               const SizedBox(height: 16,),
               SocialLoginButton(image: Assets.assetsImagesFacebookIcon,title: S.of(context).loginWithFacebook, 
               onPressed: (){
                 context.read<SignInCubit>().signInWithFacebook( context);
               }),
               const SizedBox(height: 16,),
               Platform.Platform.isIOS? 
               SocialLoginButton(image: Assets.assetsImagesApplIcon,title: S.of(context).loginWithApple, onPressed: (){})
               :const SizedBox()
               ,   
            ],
          ),
        ),
      ),
    );
  }
}


