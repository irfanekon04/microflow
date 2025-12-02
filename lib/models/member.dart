class Member {
  int? id;
  String name;
  String phone;
  String email;
  String? address;
  double balance;
  bool isActive;

  Member({
    this.id ,
    required this.name,
    required this.phone,
    required this.email,
    this.address,
    this.balance = 0,
    this.isActive = true,
  });
}
