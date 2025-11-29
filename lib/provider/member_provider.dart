import 'package:flutter/material.dart';
import 'package:microflow/models/member.dart';

class MemberProvider extends ChangeNotifier {
  final _members = [
    Member(
      name: 'Irfan Mahmud',
      phone: '01517956334',
      email: 'irfanekon@email.com',
    ),
    Member(
      name: 'Sidratul Muntaha',
      phone: '015730886257',
      email: 'smuntaha@email.com',
    ),
    Member(
      name: 'Ishan Mahmud',
      phone: '01385654559',
      email: 'ishanm@email.com',
    ),
    Member(
      name: 'Nusrat Chaity',
      phone: '01813256325',
      email: 'nusratchaity@email.com',
    ),
    Member(
      name: 'Azharul Zishan',
      phone: '01595596324',
      email: 'azhar300@email.com',
    ),
  ];

  List<Member> get members => _members;

  void addMember(Member member) {
    members.add(member);
    notifyListeners();
  }

  void removeMember(int index) {
    members.removeAt(index);
    notifyListeners();
  }
}
