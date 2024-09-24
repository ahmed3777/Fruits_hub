import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/helper_functions/build_error_bar.dart';
import 'package:fruits_hub/core/widgets/custom_progress_hub.dart';
import 'package:fruits_hub/features/auth/presentation/cubits/signin_cubit/sign_in_cubit.dart';
import 'package:fruits_hub/features/home/presentation/view/homeview.dart';

import 'signin_view_body.dart';


class SigninViewBodyBlocConsumer extends StatelessWidget {
  const SigninViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInCubit, SignInState>(
      listener: (context, state) {
        if (state is SignInSuccess) {
          buildErrorBar(context, "Successfully logged in");
          Navigator.pushReplacementNamed(context, Homeview.routeName);
        }

        if (state is SignInFailure) {
          buildErrorBar(context, state.message);
        }
      },
      builder: (context, state) {
      return  CoustomProgressHUD(
        isLoading: state is SignInLoading?true:false,
        child: const SignInViewBody(),
      );
      },
    );
  }
}
