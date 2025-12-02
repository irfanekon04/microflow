import 'package:flutter/material.dart';

class LoansCard extends StatelessWidget {
  final String name, issued, status, dueAmount, loanAmount, interest;
  LoansCard({
    super.key,
    required this.name,
    required this.issued,
    required this.dueAmount,
    required this.status,
    required this.loanAmount,
    required this.interest,
  });

  final statusColors = {
    'completed': Colors.green.shade700,
    'overdue': Colors.red.shade700,
    'active': Colors.blue.shade700,
  };
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              Column(
                mainAxisAlignment: .start,
                crossAxisAlignment: .start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  Text("Issued: $issued", style: TextStyle()),
                ],
              ),
              Container(
                padding: .only(top: 5, bottom: 5, right: 12, left: 12),
                decoration: BoxDecoration(
                  color: statusColors[status.toLowerCase()]?.withValues(
                    alpha: 0.15,
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Text(
                  status.toUpperCase(),
                  style: TextStyle(
                    color: statusColors[status.toLowerCase()],
                    fontWeight: .w600,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Loan Amount'),
              Text(
                '৳ $loanAmount',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: .w600,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Due Amount'),
              Text(
                '৳ $dueAmount',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.green.shade800,
                  fontWeight: .w600,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Interest Rate'),
              Text(
                '$interest%',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: .w600,
                ),
              ),
            ],
          ),

          SizedBox(height: 10),
          SizedBox(
            width: double.infinity,

            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent.shade100,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                // padding: .symmetric(vertical: 10),
              ),
              onPressed: () {},
              child: Text(
                'Record Payment',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                  fontWeight: .w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
