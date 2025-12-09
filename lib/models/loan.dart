class Loan {
  final int id;
  final int memberId;
  double amount;
  double interest;
  double dueAmount;
  double totalPayable;
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
    this.totalPayable = 0,
    this.isPaid = false,
  });

  String get status {
    if (isPaid) return "Completed";
    // if (dueAmount <= 0) return "Completed";
    final today = DateTime.now();
    if (dueDate.isBefore(today)) return "Overdue";

    return "Active";
  }
}
