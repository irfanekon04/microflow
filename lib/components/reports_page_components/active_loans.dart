import 'package:flutter/material.dart';

class ActiveLoans extends StatelessWidget {
  const ActiveLoans({super.key});

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
                  Icons.show_chart_rounded,
                  size: 25,
                  color: Colors.green.shade700,
                ),
              ),
              SizedBox(width: 10),
              Text(
                "Active Loans",
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
              border: Border.all(color: Colors.grey.shade300),
              color: Color(0xFFf8f8f8),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              mainAxisAlignment: .spaceAround,
              crossAxisAlignment: .start,
              children: [
                Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Text(
                      "Hasan Ali",
                      style: TextStyle(fontSize: 16, fontWeight: .w700),
                    ),
                    Text(
                      "৳ 15,000",
                      style: TextStyle(
                        color: Colors.green.shade800,
                        fontSize: 16,
                        fontWeight: .w800,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),

                LinearProgressIndicator(
                  borderRadius: BorderRadius.circular(8),
                  minHeight: 8,
                  backgroundColor: Colors.grey.shade300,
                  valueColor: AlwaysStoppedAnimation(Colors.green.shade800),
                  value: 0.5,
                ),
                SizedBox(height: 5),
                Text(
                  '${(.5 * 100).round()}% repaid',
                  style: TextStyle(fontSize: 13, color: Colors.grey.shade600),
                ),
              ],
            ),
          ),
          Container(
            margin: .only(bottom: 10),
            padding: .all(12),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
              color: Color(0xFFf8f8f8),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              mainAxisAlignment: .spaceAround,
              crossAxisAlignment: .start,
              children: [
                Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Text(
                      "Hasan Ali",
                      style: TextStyle(fontSize: 16, fontWeight: .w700),
                    ),
                    Text(
                      "৳ 15,000",
                      style: TextStyle(
                        color: Colors.green.shade800,
                        fontSize: 16,
                        fontWeight: .w800,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),

                LinearProgressIndicator(
                  borderRadius: BorderRadius.circular(8),
                  minHeight: 8,
                  backgroundColor: Colors.grey.shade300,
                  valueColor: AlwaysStoppedAnimation(Colors.green.shade800),
                  value: 0.5,
                ),
                SizedBox(height: 5),
                Text(
                  '${(.5 * 100).round()}% repaid',
                  style: TextStyle(fontSize: 13, color: Colors.grey.shade600),
                ),
              ],
            ),
          ),
          Container(
            margin: .only(bottom: 10),
            padding: .all(12),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
              color: Color(0xFFf8f8f8),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              mainAxisAlignment: .spaceAround,
              crossAxisAlignment: .start,
              children: [
                Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Text(
                      "Hasan Ali",
                      style: TextStyle(fontSize: 16, fontWeight: .w700),
                    ),
                    Text(
                      "৳ 15,000",
                      style: TextStyle(
                        color: Colors.green.shade800,
                        fontSize: 16,
                        fontWeight: .w800,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),

                LinearProgressIndicator(
                  borderRadius: BorderRadius.circular(8),
                  minHeight: 8,
                  backgroundColor: Colors.grey.shade300,
                  valueColor: AlwaysStoppedAnimation(Colors.green.shade800),
                  value: 0.5,
                ),
                SizedBox(height: 5),
                Text(
                  '${(.5 * 100).round()}% repaid',
                  style: TextStyle(fontSize: 13, color: Colors.grey.shade600),
                ),
              ],
            ),
          ),
          Container(
            margin: .only(bottom: 10),
            padding: .all(12),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
              color: Color(0xFFf8f8f8),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              mainAxisAlignment: .spaceAround,
              crossAxisAlignment: .start,
              children: [
                Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Text(
                      "Hasan Ali",
                      style: TextStyle(fontSize: 16, fontWeight: .w700),
                    ),
                    Text(
                      "৳ 15,000",
                      style: TextStyle(
                        color: Colors.green.shade800,
                        fontSize: 16,
                        fontWeight: .w800,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),

                LinearProgressIndicator(
                  borderRadius: BorderRadius.circular(8),
                  minHeight: 8,
                  backgroundColor: Colors.grey.shade300,
                  valueColor: AlwaysStoppedAnimation(Colors.green.shade800),
                  value: 0.5,
                ),
                SizedBox(height: 5),
                Text(
                  '${(.5 * 100).round()}% repaid',
                  style: TextStyle(fontSize: 13, color: Colors.grey.shade600),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
