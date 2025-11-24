class Member {
  // final String id;
  String name;
  String? phone;
  String? address;
  double totalSavings;
  // final List<String> loanIds;

  Member({
    // required this.id,
    required this.name,
    required this.phone,
    this.address,
    this.totalSavings = 0,
  });
}

List<Member> members= [];
