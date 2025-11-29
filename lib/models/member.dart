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