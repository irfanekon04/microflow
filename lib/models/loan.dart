class Loan {
  final int id;
  final int memberId;
  double amount;
  double interest;
  double dueAmount;
  DateTime issueDate;
  DateTime dueDate;
  bool isPaid;

  Loan({
    required this.id,
    required this.memberId,
    required this.amount,
    required this.interest,
    required this.dueAmount,
    required this.issueDate,
    required this.dueDate,
    this.isPaid = false,
  });
}
