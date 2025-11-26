class Member {
  // final String id;
  String name;
  String phone;
  String email;
  String? address;
  // double totalSavings;
  // final List<String> loanIds;

  Member({
    // required this.id,
    required this.name,
    required this.phone,
    required this.email,
    this.address,
    // this.totalSavings = 0,
  });
}

List<Member> members = [];

void addMember(Member member) {
  members.add(member);
}
