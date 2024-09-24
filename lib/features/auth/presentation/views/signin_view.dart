import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/services/get_it_services.dart';
import 'package:fruits_hub/core/widgets/custom_appbar.dart';
import 'package:fruits_hub/features/auth/domin/repos/auth_repo.dart';
import 'package:fruits_hub/features/auth/presentation/cubits/signin_cubit/sign_in_cubit.dart';

import '../../../../generated/l10n.dart';
import 'widget/signin_view_body_cosumer.dart';

class SigInView extends StatelessWidget {
  const SigInView({super.key});

  static const routeName = "login";
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignInCubit(getIt.get<AuthRepo>()),
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(100),
            child: CustomAppbar(title: S.of(context).login)),
        body:const SigninViewBodyBlocConsumer(),
      ),
    );
  }
}

