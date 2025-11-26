import 'package:flutter/material.dart';
import 'package:microflow/components/savings_page_components/deposit_form.dart';
import 'package:microflow/components/savings_page_components/savings_info.dart';
import 'package:microflow/components/savings_page_components/savings_tile.dart';
import 'package:microflow/components/savings_page_components/withdraw_form.dart';

class SavingsPage extends StatelessWidget {
  const SavingsPage({super.key});

  void _openDepositForm(BuildContext context) {
    showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) => Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: IntrinsicHeight(child: DepositForm()),
      ),
    );
  }

  void _openWithdrawForm(BuildContext context) {
    showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) => Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: IntrinsicHeight(child: WithdrawForm()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: .all(24),
          child: Column(
            crossAxisAlignment: .start,
            children: [
              Text(
                "Members",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Total : 4",
                style: TextStyle(color: Color(0xFF929292), fontSize: 16),
              ),
              SizedBox(height: 20),
              GridView.count(
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: <Widget>[
                  SavingsTile(
                    title: 'Total Deposits',
                    value: '৳ 150K',
                    color: Colors.green.shade700,
                    icon: Icons.arrow_downward_rounded,
                  ),
                  SavingsTile(
                    title: 'Total Withdrawals',
                    value: '৳ 150K',
                    color: Colors.blueAccent.shade700,
                    icon: Icons.arrow_upward_rounded,
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: FilledButton.icon(
                      style: FilledButton.styleFrom(
                        backgroundColor: Colors.green.shade700,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: () => _openDepositForm(context),
                      label: Text(
                        'Deposit',
                        style: TextStyle(fontWeight: .w700),
                      ),
                      icon: Icon(Icons.arrow_downward_rounded),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: FilledButton.icon(
                      style: FilledButton.styleFrom(
                        backgroundColor: Colors.blueAccent.shade700,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: () => _openWithdrawForm(context),
                      label: Text(
                        'Withdraw',
                        style: TextStyle(fontWeight: .w700),
                      ),
                      icon: Icon(Icons.arrow_upward_rounded),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                'Member Savings',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 15),
              SavingsInfo(
                name: 'Nusrat Momin',
                deposit: '5,000',
                balance: '50,000',
                time: 'Today',
              ),
              SavingsInfo(
                name: 'Nusrat Momin',
                deposit: '5,000',
                balance: '50,000',
                time: 'Today',
              ),
              SavingsInfo(
                name: 'Nusrat Momin',
                deposit: '5,000',
                balance: '50,000',
                time: 'Today',
              ),
              SavingsInfo(
                name: 'Nusrat Momin',
                deposit: '5,000',
                balance: '50,000',
                time: 'Today',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
