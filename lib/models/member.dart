class Member {
  // final String id;
  String name;
  String phone;
  String email;
  String? address;
  double balance;
  // double totalSavings;
  // final List<String> loanIds;

  Member({
    // required this.id,
    required this.name,
    required this.phone,
    required this.email,
    this.address,
    this.balance = 0,
    // this.totalSavings = 0,
  });
}

List<Member> members = [
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
  Member(name: 'Ishan Mahmud', phone: '01385654559', email: 'ishanm@email.com'),
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

void addMember(Member member) {
  members.add(member);
}

removeMember(index) {
  members.removeAt(index);
}
