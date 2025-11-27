import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:microflow/components/members_page_components/add_member_form.dart';
import 'package:microflow/components/members_page_components/member_info.dart';
import 'package:microflow/components/members_page_components/search_container.dart';
import 'package:microflow/models/member.dart';

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
                        'Total: ${members.length.toString()}',
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
                      setState(() {
                        showForm = !showForm;
                      });
                    },
                    backgroundColor: Colors.green.shade800,
                    elevation: 0,
                    child: Icon(
                      showForm ? Icons.remove : Icons.add,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              AnimatedContainer(
                duration: Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                child: showForm
                    ? AddMemberForm(
                        onCancel: () {
                          setState(() {
                            showForm = !showForm;
                          });
                        },
                      )
                    : null,
              ),
              SizedBox(height: 20),
              SearchContainer(),
              SizedBox(height: 20),
              members.isEmpty
                  ? Center(
                      child: Text(
                        "NO MEMBER, ADD SOME!!",
                        style: TextStyle(fontWeight: .w900, fontSize: 25),
                      ),
                    )
                  : ListView.builder(
                      itemCount: members.length,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return MemberInfo(
                          name: members[index].name,
                          phone: members[index].phone,
                          balance: '0',
                          memberSince: DateFormat(
                            'dd/MM/yyyy',
                          ).format(DateTime.now()),
                        );
                      },
                    ),
              // MemberInfo(
              //   name: "Mohammad Rupom",
              //   balance: '25,000',
              //   phone: '+880 1517-235423',
              //   memberSince: 'Jan 10, 2020',
              // ),
              // MemberInfo(
              //   name: "Mohammad Rupom",
              //   balance: '25,000',
              //   phone: '+880 1517-235423',
              //   memberSince: 'Jan 10, 2020',
              // ),
              // MemberInfo(
              //   name: "Mohammad Rupom",
              //   balance: '25,000',
              //   phone: '+880 1517-235423',
              //   memberSince: 'Jan 10, 2020',
              // ),
              // MemberInfo(
              //   name: "Mohammad Rupom",
              //   balance: '25,000',
              //   phone: '+880 1517-235423',
              //   memberSince: 'Jan 10, 2020',
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
