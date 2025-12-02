import 'package:flutter/material.dart';
import 'package:microflow/components/loans_page_components/loans_card.dart';
import 'package:microflow/provider/loan_provider.dart';
import 'package:provider/provider.dart';

class TabBarAll extends StatelessWidget {
  const TabBarAll({super.key});

  @override
  Widget build(BuildContext context) {
    final loanList = context.watch<LoanProvider>().loans;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24),
      child: loanList.isEmpty
          ? Center(child: Text("No data"))
          : ListView.builder(
              itemCount: loanList.length,
              itemBuilder: (context, index) {
                return LoansCard(
                  name: loanList[index].memberId.toString(),
                  issued: loanList[index].issueDate.toString(),
                  dueAmount: loanList[index].dueAmount.toString(),
                  status: 'Active',
                  loanAmount: loanList[index].amount.toString(),
                  interest: loanList[index].interest.toString(),
                );
              },
            ),
      // child: SingleChildScrollView(
      //   child: Column(
      //     children: [
      //       LoansCard(
      //         name: "Fatima Akter",
      //         issued: "Jan 10, 2025",
      //         balance: "50,000",
      //         status: "Active",
      //         loanAmount: "100,000",
      //         interest: "5",
      //       ),
      //       LoansCard(
      //         name: "Fatima Akter",
      //         issued: "Jan 10, 2025",
      //         balance: "50,000",
      //         status: "Active",
      //         loanAmount: "100,000",
      //         interest: "5",
      //       ),
      //       LoansCard(
      //         name: "Fatima Akter",
      //         issued: "Jan 10, 2025",
      //         balance: "50,000",
      //         status: "Active",
      //         loanAmount: "100,000",
      //         interest: "5",
      //       ),
      //       LoansCard(
      //         name: "Fatima Akter",
      //         issued: "Jan 10, 2025",
      //         balance: "0",
      //         status: "Completed",
      //         loanAmount: "100,000",
      //         interest: "5",
      //       ),
      //       LoansCard(
      //         name: "Fatima Akter",
      //         issued: "Jan 10, 2025",
      //         balance: "50,000",
      //         status: "Overdue",
      //         loanAmount: "100,000",
      //         interest: "5",
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
