import 'package:flutter/material.dart';
import 'package:microflow/components/loans_page_components/loans_card.dart';

class TabBarCompleted extends StatelessWidget {
  const TabBarCompleted({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          LoansCard(
            name: "Fatima Akter",
            issued: "Jan 10, 2025",
            balance: "50,000",
            status: "completed",
            loanAmount: "100,000",
            interest: "5",
          ),
          LoansCard(
            name: "Fatima Akter",
            issued: "Jan 10, 2025",
            balance: "50,000",
            status: "completed",
            loanAmount: "100,000",
            interest: "5",
          ),
          LoansCard(
            name: "Fatima Akter",
            issued: "Jan 10, 2025",
            balance: "50,000",
            status: "completed",
            loanAmount: "100,000",
            interest: "5",
          ),
          LoansCard(
            name: "Fatima Akter",
            issued: "Jan 10, 2025",
            balance: "0",
            status: "Completed",
            loanAmount: "100,000",
            interest: "5",
          ),
          LoansCard(
            name: "Fatima Akter",
            issued: "Jan 10, 2025",
            balance: "50,000",
            status: "completed",
            loanAmount: "100,000",
            interest: "5",
          ),
        ],
      ),
    );
  }
}
