import 'package:flutter/material.dart';
import 'package:microflow/components/loans_page_components/loans_card.dart';

class TabBarActive extends StatelessWidget {
  const TabBarActive({super.key});

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
              balance: "50,000",
              status: "Active",
              loanAmount: "100,000",
              interest: "5",
            ),
            LoansCard(
              name: "Fatima Akter",
              issued: "Jan 10, 2025",
              balance: "50,000",
              status: "Active",
              loanAmount: "100,000",
              interest: "5",
            ),
            LoansCard(
              name: "Fatima Akter",
              issued: "Jan 10, 2025",
              balance: "50,000",
              status: "Active",
              loanAmount: "100,000",
              interest: "5",
            ),
            LoansCard(
              name: "Fatima Akter",
              issued: "Jan 10, 2025",
              balance: "0",
              status: "active",
              loanAmount: "100,000",
              interest: "5",
            ),
            LoansCard(
              name: "Fatima Akter",
              issued: "Jan 10, 2025",
              balance: "50,000",
              status: "active",
              loanAmount: "100,000",
              interest: "5",
            ),
          ],
        ),
      ),
    );
  }
}
