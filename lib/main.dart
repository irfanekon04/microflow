import 'package:flutter/material.dart';
import 'package:microflow/pages/bottom_nav_bar.dart';
import 'package:microflow/pages/homepage.dart';
import 'package:microflow/pages/loans_page.dart';
import 'package:microflow/pages/members_page.dart';
import 'package:microflow/pages/reports_page.dart';
import 'package:microflow/pages/savings_page.dart';
import 'package:microflow/provider/member_provider.dart';
import 'package:provider/provider.dart';

void main() => runApp(
  ChangeNotifierProvider(create: (_) => MemberProvider(), child: MyApp()),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MicroFlow',
      routes: {
        '/homePage': (context) => Homepage(),
        '/membersPage': (context) => MembersPage(),
        '/loansPage': (context) => LoansPage(),
        '/reportsPage': (context) => ReportsPage(),
        '/savingsPage': (context) => SavingsPage(),
      },
      home: BottomNavBar(),
    );
  }
}
