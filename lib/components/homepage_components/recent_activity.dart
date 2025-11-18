import 'package:flutter/material.dart';
import 'package:microflow/components/homepage_components/recent_activity_element.dart';

class RecentActivity extends StatelessWidget {
  const RecentActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 600,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade200),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 6, offset: Offset(0, 3)),
        ],
      ),
      child: ListView(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: [
          RecentActivityElement(
            activity: 'Loan Repayment',
            name: 'Parvin Akter',
            time: '2 hours ago',
            value: '2,500',
          ),
          RecentActivityElement(
            activity: 'Deposit Savings',
            name: 'Mohammad Halim',
            time: '4 hours ago',
            value: '10,500',
          ),
          RecentActivityElement(
            activity: 'New Loan Issued',
            name: 'Nusrat Momin',
            time: 'Today',
            value: '20,000',
          ),
          RecentActivityElement(
            activity: 'Loan Repayment',
            name: 'Sidratul Muntaha',
            time: 'Today',
            value: '3,000',
          ),
        ],
      ),
    );
  }
}
