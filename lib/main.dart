import 'package:flutter/material.dart';
import 'package:microflow/pages/authentication/auth_page.dart';
import 'package:microflow/pages/homepage.dart';
import 'package:microflow/pages/loans_page.dart';
import 'package:microflow/pages/authentication/sign_in_page.dart';
import 'package:microflow/pages/members_page.dart';
import 'package:microflow/pages/reports_page.dart';
import 'package:microflow/pages/savings_page.dart';
import 'package:microflow/pages/authentication/sign_up_page.dart';
import 'package:microflow/provider/loan_provider.dart';
import 'package:microflow/provider/member_provider.dart';
import 'package:provider/provider.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

// ...

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MemberProvider()),
        ChangeNotifierProvider(create: (_) => LoanProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MicroFlow',
      // initialRoute: '/sign_in',
      routes: {
        '/home_page': (context) => Homepage(),
        '/sign_in': (context) => SignInPage(),
        '/sign_up': (context) => SignUpPage(),
        '/members_page': (context) => MembersPage(),
        '/loans_page': (context) => LoansPage(),
        '/reports_page': (context) => ReportsPage(),
        '/savings_page': (context) => SavingsPage(),
      },
      home: AuthPage(),
    );
  }
}
