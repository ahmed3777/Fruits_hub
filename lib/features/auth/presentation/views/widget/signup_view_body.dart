import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/helper_functions/build_error_bar.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/core/widgets/custom_textfield.dart';
import 'package:fruits_hub/core/widgets/password_field.dart';
import 'package:fruits_hub/features/auth/presentation/cubits/signup_cubit/signup_cubit.dart';
import 'package:fruits_hub/features/auth/presentation/views/widget/dont_have_an_account.dart';
import 'package:fruits_hub/features/auth/presentation/views/widget/terms_and_conditions.dart';
import 'package:fruits_hub/generated/l10n.dart';

class SignupViewBody extends StatefulWidget {
  const SignupViewBody({super.key});

  @override
  State<SignupViewBody> createState() => _SignupViewBodyState();
}

class _SignupViewBodyState extends State<SignupViewBody> {
  final _formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  late String email , password , name;
  bool isTermsAccebted = false;
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Form(
          key: _formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
             const SizedBox(height: 24,),
            CustomTextFormField(hintText:S.of(context).enterName,keyboardType: TextInputType.name, onSaved: (value) { 
              name = value!;
             },),
             const SizedBox(height: 16,),
            CustomTextFormField(hintText:S.of(context).enterEmail,keyboardType: TextInputType.emailAddress, onSaved: (value) {  
              email = value!;
            },),
             const  SizedBox(height: 16,),
             PasswordField(
            
              hintText: S.of(context).enterPassword,
              onSaved: (value) {
              password = value!;
            
             }),
        
             const SizedBox(height: 16,),
            TermsAndConditionsWidget(onChanged: (bool value) {
              isTermsAccebted = value;
              },),
             const SizedBox(height: 16,),
            CustomButton(onPressed: (){
              if(_formKey.currentState!.validate()){
                _formKey.currentState!.save();
                if (isTermsAccebted) {
  context.read<SignupCubit>().createUserWithEmailAndPassword(context,email, 
  password,
   name);
    }else{
  buildErrorBar(context, "Please accept terms and conditions");
    }
              }else{
                setState(() {
                  autovalidateMode = AutovalidateMode.always;
                });
              }
            }, text:S.of(context).createAccount),
             const SizedBox(height: 16,),
              DontHaveAnAccountWidget(text1:S.of(context).alradyHaveAnAccount,
              text2: S.of(context).login,
              onTap: () => Navigator.pop(context),
              ), 
            ],
          ),
        ),
      ),
    );
  }
}