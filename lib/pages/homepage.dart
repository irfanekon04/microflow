import 'package:flutter/material.dart';
import 'package:microflow/components/dashboard_tile.dart';
import 'package:microflow/components/quick_action_button.dart';
import 'package:microflow/components/recent_activity.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome Back",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Digital Micro-finance Management",
                style: TextStyle(color: Color(0xFF929292), fontSize: 18),
              ),
              SizedBox(height: 20),
              GridView.count(
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: <Widget>[
                  DashboardTile(
                    title: "Total Members",
                    subtitle: '1,245',
                    iconBg: Colors.blue,
                    icon: Icons.group_outlined,
                  ),
                  DashboardTile(
                    title: "Total Savings",
                    subtitle: '৳ 5.2M',
                    iconBg: Colors.green,
                    icon: Icons.attach_money,
                  ),
                  DashboardTile(
                    title: "Active Loans",
                    subtitle: '834',
                    iconBg: Colors.purple,
                    icon: Icons.show_chart,
                  ),
                  DashboardTile(
                    title: "Overdue Payments",
                    subtitle: '23',
                    iconBg: Colors.red,
                    icon: Icons.warning_amber_rounded,
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'Quick Actions',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 15),
              QuickActionButton(
                color: Colors.green.shade500,
                text: 'Add New Member',
              ),
              SizedBox(height: 10),
              QuickActionButton(
                color: Colors.red.shade500,
                text: 'Issue New Loan',
              ),
              SizedBox(height: 10),
              QuickActionButton(
                color: Colors.purple.shade500,
                text: 'Record Transaction',
              ),
              SizedBox(height: 20),
              Text(
                'Recent Activity',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 15),
              RecentActivity(),
            ],
          ),
        ),
      ),
    );
  }
}
