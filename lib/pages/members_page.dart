import 'package:flutter/material.dart';
import 'package:microflow/components/members_page_components/add_member_form.dart';
import 'package:microflow/components/members_page_components/member_info.dart';
import 'package:microflow/components/members_page_components/search_container.dart';

class MembersPage extends StatefulWidget {
  const MembersPage({super.key});

  @override
  State<MembersPage> createState() => _MembersPageState();
}

class _MembersPageState extends State<MembersPage> {
  bool showForm = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                        style: TextStyle(
                          color: Color(0xFF929292),
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        showForm = !showForm;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green.shade800,
                      ),
                      child: Icon(
                        showForm ? Icons.add : Icons.remove,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              AnimatedContainer(
                duration: Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                child: showForm
                    ? null
                    : AddMemberForm(
                        onCancel: () {
                          setState(() {
                            showForm = true;
                          });
                        },
                      ),
              ),
              SizedBox(height: 20),
              SearchContainer(),
              SizedBox(height: 20),
              MemberInfo(
                name: "Mohammad Rupom",
                balance: '25,000',
                phone: '+880 1517-235423',
                memberSince: 'Jan 10, 2020',
              ),
              MemberInfo(
                name: "Mohammad Rupom",
                balance: '25,000',
                phone: '+880 1517-235423',
                memberSince: 'Jan 10, 2020',
              ),
              MemberInfo(
                name: "Mohammad Rupom",
                balance: '25,000',
                phone: '+880 1517-235423',
                memberSince: 'Jan 10, 2020',
              ),
              MemberInfo(
                name: "Mohammad Rupom",
                balance: '25,000',
                phone: '+880 1517-235423',
                memberSince: 'Jan 10, 2020',
              ),
              MemberInfo(
                name: "Mohammad Rupom",
                balance: '25,000',
                phone: '+880 1517-235423',
                memberSince: 'Jan 10, 2020',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
