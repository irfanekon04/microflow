import 'package:flutter/material.dart';
import 'package:microflow/pages/bottom_nav_bar.dart';
import 'package:microflow/pages/homepage.dart';
import 'package:microflow/pages/loans_page.dart';
import 'package:microflow/pages/members_page.dart';
import 'package:microflow/pages/reports_page.dart';
import 'package:microflow/pages/savings_page.dart';
import 'package:microflow/provider/loan_provider.dart';
import 'package:microflow/provider/member_provider.dart';
import 'package:provider/provider.dart';

void main() => runApp(
  MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => MemberProvider()),
      ChangeNotifierProvider(create: (_) => LoanProvider()),
    ],
    child: MyApp(),
  ),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MicroFlow',
      routes: {
        '/home_page': (context) => Homepage(),
        '/members_page': (context) => MembersPage(),
        '/loans_page': (context) => LoansPage(),
        '/reports_page': (context) => ReportsPage(),
        '/savings_page': (context) => SavingsPage(),
      },
      home: BottomNavBar(),
    );
  }
}
