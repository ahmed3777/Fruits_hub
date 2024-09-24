// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `FlutterHup`
  String get title {
    return Intl.message(
      'FlutterHup',
      name: 'title',
      desc: '',
      args: [],
    );
  }

  /// `Hello`
  String get hello {
    return Intl.message(
      'Hello',
      name: 'hello',
      desc: '',
      args: [],
    );
  }

  /// `Esc`
  String get esc {
    return Intl.message(
      'Esc',
      name: 'esc',
      desc: '',
      args: [],
    );
  }

  /// `Discover the best shopping experience with FruitHub. Discover our wide variety of fresh and high-quality fruits and get the best offers and quality products.`
  String get onBordingsubtitle1 {
    return Intl.message(
      'Discover the best shopping experience with FruitHub. Discover our wide variety of fresh and high-quality fruits and get the best offers and quality products.',
      name: 'onBordingsubtitle1',
      desc: '',
      args: [],
    );
  }

  /// `We provide you with the best choice of fruits. See details, photos and reviews to ensure that you choose the right fruit.`
  String get onBordingsubtitle2 {
    return Intl.message(
      'We provide you with the best choice of fruits. See details, photos and reviews to ensure that you choose the right fruit.',
      name: 'onBordingsubtitle2',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to `
  String get onBordingtitle1 {
    return Intl.message(
      'Welcome to ',
      name: 'onBordingtitle1',
      desc: '',
      args: [],
    );
  }

  /// `FruitHub`
  String get onBordingtitle2 {
    return Intl.message(
      'FruitHub',
      name: 'onBordingtitle2',
      desc: '',
      args: [],
    );
  }

  /// `Search and Shop`
  String get onBordingtitle3 {
    return Intl.message(
      'Search and Shop',
      name: 'onBordingtitle3',
      desc: '',
      args: [],
    );
  }

  /// `Get Started`
  String get onBordingbutton {
    return Intl.message(
      'Get Started',
      name: 'onBordingbutton',
      desc: '',
      args: [],
    );
  }

  /// ` Login`
  String get login {
    return Intl.message(
      ' Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Forget Password?`
  String get forgetPassword {
    return Intl.message(
      'Forget Password?',
      name: 'forgetPassword',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get register {
    return Intl.message(
      'Register',
      name: 'register',
      desc: '',
      args: [],
    );
  }

  /// `Do you have an account?`
  String get doUnregister {
    return Intl.message(
      'Do you have an account?',
      name: 'doUnregister',
      desc: '',
      args: [],
    );
  }

  /// ` Create Account`
  String get createAccount {
    return Intl.message(
      ' Create Account',
      name: 'createAccount',
      desc: '',
      args: [],
    );
  }

  /// `Alrady have an Account`
  String get alradyHaveAnAccount {
    return Intl.message(
      'Alrady have an Account',
      name: 'alradyHaveAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `Or`
  String get or {
    return Intl.message(
      'Or',
      name: 'or',
      desc: '',
      args: [],
    );
  }

  /// `Login with Google`
  String get loginWithGoogle {
    return Intl.message(
      'Login with Google',
      name: 'loginWithGoogle',
      desc: '',
      args: [],
    );
  }

  /// `Login with Facebook`
  String get loginWithFacebook {
    return Intl.message(
      'Login with Facebook',
      name: 'loginWithFacebook',
      desc: '',
      args: [],
    );
  }

  /// `Login with Apple`
  String get loginWithApple {
    return Intl.message(
      'Login with Apple',
      name: 'loginWithApple',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get signup {
    return Intl.message(
      'Sign Up',
      name: 'signup',
      desc: '',
      args: [],
    );
  }

  /// `Your Email`
  String get enterEmail {
    return Intl.message(
      'Your Email',
      name: 'enterEmail',
      desc: '',
      args: [],
    );
  }

  /// `Your Password`
  String get enterPassword {
    return Intl.message(
      'Your Password',
      name: 'enterPassword',
      desc: '',
      args: [],
    );
  }

  /// `Your Name`
  String get enterName {
    return Intl.message(
      'Your Name',
      name: 'enterName',
      desc: '',
      args: [],
    );
  }

  /// `The Email or Password is wrong`
  String get weakPassword {
    return Intl.message(
      'The Email or Password is wrong',
      name: 'weakPassword',
      desc: '',
      args: [],
    );
  }

  /// `The Email or Password is wrong`
  String get invalidEmail {
    return Intl.message(
      'The Email or Password is wrong',
      name: 'invalidEmail',
      desc: '',
      args: [],
    );
  }

  /// `The Email or Password is wrong`
  String get emailAlreadyInUse {
    return Intl.message(
      'The Email or Password is wrong',
      name: 'emailAlreadyInUse',
      desc: '',
      args: [],
    );
  }

  /// `Network request failed`
  String get networkRequestFailed {
    return Intl.message(
      'Network request failed',
      name: 'networkRequestFailed',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong`
  String get defultErrorMessage {
    return Intl.message(
      'Something went wrong',
      name: 'defultErrorMessage',
      desc: '',
      args: [],
    );
  }

  /// `By creating an account, you agree to our`
  String get tearms {
    return Intl.message(
      'By creating an account, you agree to our',
      name: 'tearms',
      desc: '',
      args: [],
    );
  }

  /// `Terms and Conditions`
  String get conditions {
    return Intl.message(
      'Terms and Conditions',
      name: 'conditions',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Best Selling`
  String get bestSelling {
    return Intl.message(
      'Best Selling',
      name: 'bestSelling',
      desc: '',
      args: [],
    );
  }

  /// `Categories`
  String get categories {
    return Intl.message(
      'Categories',
      name: 'categories',
      desc: '',
      args: [],
    );
  }

  /// `More`
  String get more {
    return Intl.message(
      'More',
      name: 'more',
      desc: '',
      args: [],
    );
  }

  /// `Search For....`
  String get search {
    return Intl.message(
      'Search For....',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Cart`
  String get cart {
    return Intl.message(
      'Cart',
      name: 'cart',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `No Data`
  String get noData {
    return Intl.message(
      'No Data',
      name: 'noData',
      desc: '',
      args: [],
    );
  }

  /// `Shop Now`
  String get shopNow {
    return Intl.message(
      'Shop Now',
      name: 'shopNow',
      desc: '',
      args: [],
    );
  }

  /// `Off`
  String get discount {
    return Intl.message(
      'Off',
      name: 'discount',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
