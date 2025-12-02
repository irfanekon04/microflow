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
    final dueAmount = amount + interestAmount;

    final loan = Loan(
      id: _idGenerator++,
      memberId: memberId,
      amount: amount,
      interest: interest,
      dueAmount: dueAmount,
      issueDate: DateTime.now(),
      dueDate: DateTime.now().add(Duration(days: duration)),
    );

    _loans.add(loan);
    notifyListeners();
  }

  void repayLoan(int loanId) {
    final index = _loans.indexWhere((loan) => loan.id == loanId);

    if (index != -1) {
      _loans[index].isPaid = true;
      notifyListeners();
    }
  }

  List<Loan> getLoansByMember(int memberId) {
    return _loans.where((loan) => loan.memberId == memberId).toList();
  }

  List<Loan> getActiveLoans() {
    return _loans.where((loan) => !loan.isPaid).toList();
  }

  List<Loan> getOverdueLoans() {
    return _loans.where((loan) {
      return !loan.isPaid && loan.dueDate.isBefore(DateTime.now());
    }).toList();
  }

  double get totalIssuedAmount {
    double total = 0;
    for (var loan in _loans) {
      total += loan.amount;
    }
    return total;
  }
}
