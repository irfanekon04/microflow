import 'package:flutter/material.dart';

class SavingsInfo extends StatelessWidget {
  final String name, deposit, time, balance;
  const SavingsInfo({
    super.key,
    required this.name,
    required this.deposit,
    required this.balance,
    required this.time,
  });

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
        crossAxisAlignment: .start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                name,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              Text(
                '৳ $balance',
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xff088f60),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 25),
          Text('Deposit - ৳ $deposit'),
          SizedBox(height: 25),
          Text(time),
        ],
      ),
    );
  }
}
