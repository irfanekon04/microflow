import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:microflow/components/reports_page_components/active_loans.dart';
import 'package:microflow/components/reports_page_components/overdue_payments.dart';
import 'package:microflow/components/reports_page_components/summary_report.dart';

class ReportsPage extends StatefulWidget {
  const ReportsPage({super.key});

  @override
  State<ReportsPage> createState() => _ReportsPageState();
}

class _ReportsPageState extends State<ReportsPage> {
  int selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: .start,

          children: [
            Padding(
              padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Text(
                    "Reports",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Organization Analytics",
                    style: TextStyle(color: Color(0xFF929292), fontSize: 16),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            ButtonsTabBar(
              labelStyle: TextStyle(fontWeight: .w700, color: Colors.white),
              unselectedLabelStyle: TextStyle(
                fontWeight: .w700,
                color: Colors.black87,
              ),
              radius: 25,
              unselectedBackgroundColor: Colors.blueAccent.shade100,
              backgroundColor: Colors.green.shade800,
              buttonMargin: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
              contentPadding: EdgeInsets.symmetric(horizontal: 15),

              tabs: [
                Tab(
                  text: 'Summary Report',
                  icon: Icon(Icons.bar_chart_rounded),
                ),
                Tab(text: "Overdue Payments", icon: Icon(Icons.info_rounded)),
                Tab(text: "Active Loans", icon: Icon(Icons.show_chart_rounded)),
              ],
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: TabBarView(
                  children: [
                    SummaryReport(), // Put scrolling inside these widgets
                    OverduePayments(),
                    ActiveLoans(),
                  ],
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 24, right: 24, bottom: 24),
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,

                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent.shade100,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Download Report as PDF',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black87,
                          fontWeight: .w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
