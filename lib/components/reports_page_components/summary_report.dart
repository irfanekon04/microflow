import 'package:flutter/material.dart';

class SummaryReport extends StatelessWidget {
  const SummaryReport({super.key});

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
                  color: Color(0xff088f60).withValues(alpha: 0.25),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  Icons.bar_chart_rounded,
                  size: 25,
                  color: Color(0xff088f60),
                ),
              ),
              SizedBox(width: 10),
              Text(
                "Summary Report",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 18,
                  fontWeight: .w700,
                ),
              ),
            ],
          ),
          Divider(height: 20),
          SizedBox(height: 10),
          GridView.count(
            physics: NeverScrollableScrollPhysics(),
            childAspectRatio: 2 / 1,
            shrinkWrap: true,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  color: Color(0xFFf8f8f8),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  mainAxisAlignment: .spaceBetween,
                  crossAxisAlignment: .start,
                  children: [
                    Text(
                      'Total Members',
                      style: TextStyle(fontSize: 14, color: Color(0xFF86848d)),
                    ),
                    Text(
                      '1,245',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: .w900,
                        color: Color(0xff088f60),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  color: Color(0xFFf8f8f8),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  mainAxisAlignment: .spaceBetween,
                  crossAxisAlignment: .start,
                  children: [
                    Text(
                      'Active Loans',
                      style: TextStyle(fontSize: 14, color: Color(0xFF86848d)),
                    ),
                    Text(
                      '834',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: .w900,
                        color: Color(0xff088f60),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  color: Color(0xFFf8f8f8),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  mainAxisAlignment: .spaceBetween,
                  crossAxisAlignment: .start,
                  children: [
                    Text(
                      'Total Savings',
                      style: TextStyle(fontSize: 14, color: Color(0xFF86848d)),
                    ),
                    Text(
                      '৳ 5.2M',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: .w900,
                        color: Color(0xff088f60),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  color: Color(0xFFf8f8f8),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  mainAxisAlignment: .spaceBetween,
                  crossAxisAlignment: .start,
                  children: [
                    Text(
                      'Outstanding Loans',
                      style: TextStyle(fontSize: 14, color: Color(0xFF86848d)),
                    ),
                    Text(
                      '৳ 12.5M',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: .w900,
                        color: Color(0xff088f60),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
