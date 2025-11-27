import 'package:flutter/material.dart';

class OverduePayments extends StatelessWidget {
  const OverduePayments({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.green.withValues(alpha: 0.25),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  Icons.info_outline_rounded,
                  size: 25,
                  color: Colors.green.shade700,
                ),
              ),
              SizedBox(width: 10),
              Text(
                "Overdue Payments",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 18,
                  fontWeight: .w700,
                ),
              ),
            ],
          ),
          Divider(height: 20),
          Container(
            margin: .only(bottom: 10),
            padding: .all(12),
            decoration: BoxDecoration(
              color: Colors.red.shade900.withValues(alpha: .03),
              border: Border.all(
                color: Colors.red.shade900.withValues(alpha: .25),
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: .spaceBetween,
                  crossAxisAlignment: .start,
                  children: [
                    Text(
                      "Hasan Ali",
                      style: TextStyle(fontSize: 16, fontWeight: .w700),
                    ),
                    Text(
                      "৳ 15,000",
                      style: TextStyle(
                        color: Colors.red.shade800,
                        fontSize: 16,
                        fontWeight: .w800,
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: .all(6),
                  decoration: BoxDecoration(
                    color: Colors.red.shade900.withValues(alpha: 0.20),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    '45 days',
                    style: TextStyle(color: Colors.red.shade900, fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: .only(bottom: 10),
            padding: .all(12),
            decoration: BoxDecoration(
              color: Colors.red.shade900.withValues(alpha: .03),
              border: Border.all(
                color: Colors.red.shade900.withValues(alpha: .25),
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: .spaceBetween,
                  crossAxisAlignment: .start,
                  children: [
                    Text(
                      "Hasan Ali",
                      style: TextStyle(fontSize: 16, fontWeight: .w700),
                    ),
                    Text(
                      "৳ 15,000",
                      style: TextStyle(
                        color: Colors.red.shade800,
                        fontSize: 16,
                        fontWeight: .w800,
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: .all(6),
                  decoration: BoxDecoration(
                    color: Colors.red.shade900.withValues(alpha: 0.20),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    '45 days',
                    style: TextStyle(color: Colors.red.shade900, fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: .only(bottom: 10),
            padding: .all(12),
            decoration: BoxDecoration(
              color: Colors.red.shade900.withValues(alpha: .03),
              border: Border.all(
                color: Colors.red.shade900.withValues(alpha: .25),
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: .spaceBetween,
                  crossAxisAlignment: .start,
                  children: [
                    Text(
                      "Hasan Ali",
                      style: TextStyle(fontSize: 16, fontWeight: .w700),
                    ),
                    Text(
                      "৳ 15,000",
                      style: TextStyle(
                        color: Colors.red.shade800,
                        fontSize: 16,
                        fontWeight: .w800,
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: .all(6),
                  decoration: BoxDecoration(
                    color: Colors.red.shade900.withValues(alpha: 0.20),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    '45 days',
                    style: TextStyle(color: Colors.red.shade900, fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: .only(bottom: 10),
            padding: .all(12),
            decoration: BoxDecoration(
              color: Colors.red.shade900.withValues(alpha: .03),
              border: Border.all(
                color: Colors.red.shade900.withValues(alpha: .25),
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: .spaceBetween,
                  crossAxisAlignment: .start,
                  children: [
                    Text(
                      "Hasan Ali",
                      style: TextStyle(fontSize: 16, fontWeight: .w700),
                    ),
                    Text(
                      "৳ 15,000",
                      style: TextStyle(
                        color: Colors.red.shade800,
                        fontSize: 16,
                        fontWeight: .w800,
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: .all(6),
                  decoration: BoxDecoration(
                    color: Colors.red.shade900.withValues(alpha: 0.20),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    '45 days',
                    style: TextStyle(color: Colors.red.shade900, fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
