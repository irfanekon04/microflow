import 'package:flutter/material.dart';
import 'package:microflow/components/loans_page_components/loans_card.dart';

class TabBarOverdue extends StatelessWidget {
  const TabBarOverdue({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24),
      child: SingleChildScrollView(
        child: Column(
          children: [
            LoansCard(
              name: "Fatima Akter",
              issued: "Jan 10, 2025",
              dueAmount: "50,000",
              status: "overdue",
              loanAmount: "100,000",
              interest: "5",
            ),
            LoansCard(
              name: "Fatima Akter",
              issued: "Jan 10, 2025",
              dueAmount: "50,000",
              status: "overdue",
              loanAmount: "100,000",
              interest: "5",
            ),
            LoansCard(
              name: "Fatima Akter",
              issued: "Jan 10, 2025",
              dueAmount: "50,000",
              status: "overdue",
              loanAmount: "100,000",
              interest: "5",
            ),
            LoansCard(
              name: "Fatima Akter",
              issued: "Jan 10, 2025",
              dueAmount: "0",
              status: "overdue",
              loanAmount: "100,000",
              interest: "5",
            ),
            LoansCard(
              name: "Fatima Akter",
              issued: "Jan 10, 2025",
              dueAmount: "50,000",
              status: "overdue",
              loanAmount: "100,000",
              interest: "5",
            ),
          ],
        ),
      ),
    );
  }
}
