import 'package:flutter/material.dart';
import 'package:microflow/models/member.dart';

class MemberProvider extends ChangeNotifier {
  final _members = [
    Member(
      id: 1,
      name: 'Irfan Mahmud',
      phone: '01517956334',
      email: 'irfanekon@email.com',
    ),
    Member(
      id: 2,
      name: 'Sidratul Muntaha',
      phone: '015730886257',
      email: 'smuntaha@email.com',
    ),
    Member(
      id: 3,
      name: 'Ishan Mahmud',
      phone: '01385654559',
      email: 'ishanm@email.com',
    ),
    Member(
      id: 4,
      name: 'Noureen Samantha',
      phone: '01813256325',
      email: 'nsamantha@email.com',
    ),
    Member(
      id: 5,
      name: 'Azharul Zishan',
      phone: '01595596324',
      email: 'azhar300@email.com',
    ),
  ];

  List<Member> get members => _members;

  int _idGenerator = 1000;
  void addMember(Member member) {
    _members.add(
      Member(id: _idGenerator++, name: member.name, phone: member.phone, email: member.email)
    );
    notifyListeners();
  }

  void removeMember(int index) {
    _members.removeAt(index);
    notifyListeners();
  }
}
