import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:microflow/components/members_page_components/add_member_form.dart';
import 'package:microflow/components/members_page_components/member_info.dart';
import 'package:microflow/components/members_page_components/search_container.dart';
import 'package:microflow/provider/member_provider.dart';
import 'package:provider/provider.dart';

class MembersPage extends StatefulWidget {
  const MembersPage({super.key});

  @override
  State<MembersPage> createState() => _MembersPageState();
}

class _MembersPageState extends State<MembersPage> {
  void _addMemberForm(BuildContext context) {
    showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) => Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: SingleChildScrollView(child: AddMemberForm()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final memberList = context.watch<MemberProvider>().members;
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
                        'Total: ${memberList.length.toString()}',
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
                    onPressed: () => _addMemberForm(context),
                    backgroundColor: Color(0xff088f60),
                    elevation: 0,
                    child: Icon(Icons.add, size: 30, color: Colors.white),
                  ),
                ],
              ),
              SizedBox(height: 20),

              SearchContainer(),
              SizedBox(height: 20),
              memberList.isEmpty
                  ? Center(
                      child: Text(
                        "NO MEMBER, ADD SOME!!",
                        style: TextStyle(fontWeight: .w900, fontSize: 25),
                      ),
                    )
                  : ListView.builder(
                      itemCount: memberList.length,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return MemberInfo(
                          name: memberList[index].name,
                          phone: memberList[index].phone,
                          balance: memberList[index].balance,
                          memberSince: DateFormat(
                            'dd/MM/yyyy',
                          ).format(DateTime.now()),
                          deleteFunction: () {
                            context.read<MemberProvider>().removeMember(index);
                          },
                        );
                      },
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
