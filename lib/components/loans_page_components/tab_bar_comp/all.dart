import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:microflow/components/loans_page_components/loans_card.dart';
import 'package:microflow/provider/loan_provider.dart';
import 'package:microflow/provider/member_provider.dart';
import 'package:provider/provider.dart';

class TabBarAll extends StatelessWidget {
  const TabBarAll({super.key});

  @override
  Widget build(BuildContext context) {
    final loanList = context.watch<LoanProvider>().loans;
    final memberProvider = context.watch<MemberProvider>();
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24),
      child: loanList.isEmpty
          ? Center(child: Text("No data"))
          : ListView.builder(
              itemCount: loanList.length,
              itemBuilder: (context, index) {
                final loan = loanList[index];
                final memberName = memberProvider
                    .getMemberById(loan.memberId)
                    ?.name;
                return LoansCard(
                  name: memberName!,
                  issued: DateFormat('dd/MM/yyyy').format(loan.issueDate),
                  dueAmount: loan.dueAmount.toString(),
                  status: loan.status,
                  loanAmount: loan.amount.toString(),
                  interest: loan.interest.toString(),
                );
              },
            ),
    );
  }
}
