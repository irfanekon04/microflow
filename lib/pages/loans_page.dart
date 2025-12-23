import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:microflow/components/loans_page_components/add_loans_form.dart';
import 'package:microflow/components/loans_page_components/tab_bar_comp/active.dart';
import 'package:microflow/components/loans_page_components/tab_bar_comp/all.dart';
import 'package:microflow/components/loans_page_components/tab_bar_comp/completed.dart';
import 'package:microflow/components/loans_page_components/tab_bar_comp/overdue.dart';
import 'package:microflow/provider/loan_provider.dart';
import 'package:provider/provider.dart';

class LoansPage extends StatefulWidget {
  const LoansPage({super.key});

  @override
  State<LoansPage> createState() => _LoansPageState();
}

class _LoansPageState extends State<LoansPage> {
  void _openLoansForm(BuildContext context) {
    showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) => Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: SingleChildScrollView(child: AddLoansForm()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 0,
      child: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
              child: Row(
                mainAxisAlignment: .spaceBetween,
                crossAxisAlignment: .center,
                children: [
                  Column(
                    crossAxisAlignment: .start,
                    children: [
                      Text(
                        "Loans",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: .bold,
                        ),
                      ),
                      Text(
                        "Total Issued: ৳ ${context.watch<LoanProvider>().totalIssuedAmount}",
                        style: TextStyle(
                          color: Color(0xFF929292),
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  FloatingActionButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(10),
                    ),
                    mini: true,
                    onPressed: () {
                      _openLoansForm(context);
                    },
                    backgroundColor: Color(0xff088f60),
                    elevation: 0,
                    child: Icon(Icons.add, size: 30, color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            ButtonsTabBar(
              labelStyle: TextStyle(fontWeight: .w700, color: Colors.white),
              unselectedLabelStyle: TextStyle(
                fontWeight: .w700,
                color: Colors.black87,
              ),
              radius: 25,
              unselectedBackgroundColor: Colors.blueAccent.shade100,
              backgroundColor: Color(0xff088f60),
              buttonMargin: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
              contentPadding: EdgeInsets.symmetric(horizontal: 15),
              tabs: [
                Tab(text: "All"),
                Tab(text: "Active"),
                Tab(text: "Completed"),
                Tab(text: "Overdue"),
              ],
            ),

            SizedBox(height: 10),
            Expanded(
              child: TabBarView(
                children: [
                  TabBarAll(),
                  TabBarActive(),
                  TabBarCompleted(),
                  TabBarOverdue(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
