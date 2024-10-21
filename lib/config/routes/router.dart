import 'package:flutter/material.dart';
import 'package:money_transfer/config/routes/page_fade_transition.dart';
import 'package:money_transfer/config/routes/page_slide_transition.dart';
import 'package:money_transfer/features/auth/screens/forgort_password_screen.dart';
import 'package:money_transfer/features/auth/screens/forgort_password_verification_screen.dart';
import 'package:money_transfer/features/auth/screens/forgort_pin_screen.dart';
import 'package:money_transfer/features/auth/screens/forgort_pin_verification_screen.dart';
import 'package:money_transfer/features/auth/screens/login_screen.dart';
import 'package:money_transfer/features/auth/screens/signup_screen.dart';
import 'package:money_transfer/features/auth/screens/signup_verification_screen.dart';
import 'package:money_transfer/features/home/screens/comming_soon_screen.dart';
import 'package:money_transfer/features/home/screens/fund_wallet_screen.dart';
import 'package:money_transfer/features/home/screens/home_screen.dart';
import 'package:money_transfer/features/home/screens/send_money_screen.dart';
import 'package:money_transfer/features/onboarding/screens/onboarding_screen.dart';
import 'package:money_transfer/features/profile/screens/change_pin_screen.dart';
import 'package:money_transfer/features/profile/screens/chat_screen.dart';
import 'package:money_transfer/features/transactions/screens/all_transactions_screen.dart';
import 'package:money_transfer/features/transactions/screens/transaction_details_screen.dart';
import 'package:money_transfer/main.dart';
import 'package:money_transfer/features/transactions/models/transactions.dart';
import 'package:money_transfer/widgets/main_app.dart';

Route<dynamic> appRoutes(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case LoginScreen.route:
      return PageFadeTransition(
        pageBuilder: (_, __, ___) => const LoginScreen(),
        settings: routeSettings,
      );
    case SignUpScreen.route:
      return PageFadeTransition(
        pageBuilder: (_, __, ___) => const SignUpScreen(),
        settings: routeSettings,
      );
    case SignUpVerificationScreen.route:
      return PageSlideTransition(
        pageBuilder: (_, __, ___) => const SignUpVerificationScreen(),
        settings: routeSettings,
      );
    case ForgortPasswordScreen.route:
      return PageSlideTransition(
        pageBuilder: (_, __, ___) => const ForgortPasswordScreen(),
        settings: routeSettings,
      );
    case ForgortPasswordVerificationScreen.route:
      return PageSlideTransition(
        pageBuilder: (_, __, ___) => const ForgortPasswordVerificationScreen(),
        settings: routeSettings,
      );
    case MainApp.route:
      var currentPage = routeSettings.arguments as int;
      return PageFadeTransition(
        pageBuilder: (_, __, ___) => MainApp(
          currentPage: currentPage,
        ),
        settings: routeSettings,
      );
    case SendMoneyScreen.route:
      return PageSlideTransition(
        pageBuilder: (_, __, ___) => const SendMoneyScreen(),
        settings: routeSettings,
      );
    case HomeScreen.route:
      return PageFadeTransition(
        pageBuilder: (_, __, ___) => const HomeScreen(),
        settings: routeSettings,
      );
    // case OnBoardingScreen.route:
    //   return PageFadeTransition(
    //     pageBuilder: (_, __, ___) => const OnBoardingScreen(),
    //     settings: routeSettings,
    //   );
    case TransactionsScreen.route:
      return PageFadeTransition(
        pageBuilder: (_, __, ___) => const TransactionsScreen(),
        settings: routeSettings,
      );
    case CommingSoonScreen.route:
      return PageSlideTransition(
        pageBuilder: (_, __, ___) => const CommingSoonScreen(),
        settings: routeSettings,
      );
    case ChangeLoginPinScreen.route:
      return PageSlideTransition(
        pageBuilder: (_, __, ___) => const ChangeLoginPinScreen(),
        settings: routeSettings,
      );
    case MyApp.route:
      return MaterialPageRoute(
        builder: (context) => const MyApp(),
      );
    case FundWalletScreen.route:
      return PageSlideTransition(
        pageBuilder: (_, __, ___) => const FundWalletScreen(),
        settings: routeSettings,
      );
    case TransactionDetailsScreen.route:
      var transactions = routeSettings.arguments as Transactions;
      return PageFadeTransition(
        pageBuilder: (_, __, ___) => TransactionDetailsScreen(
          transactions: transactions,
        ),
        settings: routeSettings,
      );
    case ChatScreen.route:
      return PageSlideTransition(
        pageBuilder: (_, __, ___) => const ChatScreen(),
        settings: routeSettings,
      );
    case ForgortPinScreen.route:
      return PageSlideTransition(
        pageBuilder: (_, __, ___) => const ForgortPinScreen(),
        settings: routeSettings,
      );
    case ForgortPinVerificationScreen.route:
      return PageSlideTransition(
        pageBuilder: (_, __, ___) => const ForgortPinVerificationScreen(),
        settings: routeSettings,
      );
    default:
      return MaterialPageRoute(
        builder: (_) => const Scaffold(
          body: Center(
            child: Text("This page dosent exist"),
          ),
        ),
      );
  }
}
