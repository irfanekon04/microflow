import 'package:flutter/material.dart';
import 'package:microflow/models/loan.dart';

class LoanProvider extends ChangeNotifier {
  final List<Loan> _loans = [];
  int _idGenerator = 9001;
  List<Loan> get loans => _loans;

  void issueLoan({
    required int memberId,
    required double amount,
    required double interest,
    required int duration,
  }) {
    final interestAmount = amount * (interest / 100);
    final totalPayable = amount + interestAmount;

    final loan = Loan(
      id: _idGenerator++,
      memberId: memberId,
      amount: amount,
      interest: interest,
      dueAmount: totalPayable,
      issueDate: DateTime.now(),
      dueDate: DateTime.now().add(Duration(days: duration)),
    );

    _loans.add(loan);
    notifyListeners();
  }

  void repayLoan(int loanId, double amount) {
    final index = _loans.indexWhere((loan) => loan.id == loanId);

    if (index != -1) {
      final loan = _loans[index];
      loan.dueAmount -= amount;
      if (loan.dueAmount <= 0) {
        loan.dueAmount = 0;
        loan.isPaid = true;
      }
      notifyListeners();
    }
  }

  List<Loan> getLoansByMember(int memberId) {
    return _loans.where((loan) => loan.memberId == memberId).toList();
  }

  List<Loan> get activeLoans =>
      _loans.where((l) => l.status == "Active").toList();

  List<Loan> get overdueLoans =>
      _loans.where((l) => l.status == "Overdue").toList();

  List<Loan> get paidLoans =>
      _loans.where((l) => l.status == "Completed").toList();

  double get totalIssuedAmount {
    double total = 0;
    for (var loan in _loans) {
      total += loan.amount;
    }
    return total;
  }
}
