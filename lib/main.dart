import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:fruits_hub/core/helper_functions/on_generate_route.dart';
import 'package:fruits_hub/core/services/get_it_services.dart';
import 'package:fruits_hub/core/services/shared_preferences_singleton.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/firebase_options.dart';
import 'package:fruits_hub/generated/l10n.dart';
import 'core/services/custom_bloc_observer.dart';
import 'features/splash/presentation/views/splashview.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = CustomBlocObserver();

  //firebase init and runs
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

 //GET_IT init and runs
   setupGetit(); 
     //shared preferences init and runs
  await Prefs.init();
  runApp(const FruitHub());
}

class FruitHub extends StatelessWidget {
  const FruitHub({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "cairo", 
        scaffoldBackgroundColor: Colors.white,
        colorScheme:  ColorScheme.fromSeed(seedColor: AppColors.primaryColor)
      ),
      locale: const Locale("en"),
     onGenerateRoute: onGenerateRoute,
     initialRoute: SplashView.routeName,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
    );
  }
}


