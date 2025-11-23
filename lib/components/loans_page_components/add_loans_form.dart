import 'package:flutter/material.dart';

class AddLoansForm extends StatelessWidget {
  final void Function()? onCancel;
  const AddLoansForm({super.key, required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
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
            mainAxisAlignment: .spaceBetween,
            children: [
              Text(
                "Issue New Loan",
                style: TextStyle(fontSize: 18, fontWeight: .bold),
              ),

              IconButton(
                onPressed: onCancel,
                icon: Icon(Icons.close, color: Colors.grey.shade800),
              ),
            ],
          ),
          SizedBox(height: 20),
          Text(
            'Select Member',
            style: TextStyle(fontSize: 16, fontWeight: .w600),
          ),
          SizedBox(height: 8),
          TextField(
            cursorColor: Colors.grey.shade800,
            decoration: InputDecoration(
              isDense: true,
              filled: true,
              fillColor: Colors.grey.shade100,
              hintText: 'Select member...',
              enabledBorder: OutlineInputBorder(
                borderRadius: .circular(12),
                borderSide: BorderSide(color: Colors.grey.shade300),
              ),

              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(width: 2, color: Colors.green.shade800),
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Loan Amount (৳)',
            style: TextStyle(fontSize: 16, fontWeight: .w600),
          ),
          SizedBox(height: 8),
          TextField(
            cursorColor: Colors.grey.shade800,
            decoration: InputDecoration(
              filled: true,
              isDense: true,
              fillColor: Colors.grey.shade100,
              hintText: 'XXXXX',
              enabledBorder: OutlineInputBorder(
                borderRadius: .circular(12),
                borderSide: BorderSide(color: Colors.grey.shade300),
              ),

              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(width: 2, color: Colors.green.shade800),
              ),
            ),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Text(
                      'Interest Rate (%)',
                      style: TextStyle(fontSize: 16, fontWeight: .w600),
                    ),
                    SizedBox(height: 8),
                    TextField(
                      cursorColor: Colors.grey.shade800,
                      decoration: InputDecoration(
                        isDense: true,
                        filled: true,
                        fillColor: Colors.grey.shade100,
                        hintText: 'XXX.XX',
                        enabledBorder: OutlineInputBorder(
                          borderRadius: .circular(12),
                          borderSide: BorderSide(color: Colors.grey.shade300),
                        ),

                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            width: 2,
                            color: Colors.green.shade800,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  children: [
                    Text(
                      'Duration (Months)',
                      style: TextStyle(fontSize: 16, fontWeight: .w600),
                    ),
                    SizedBox(height: 8),
                    TextField(
                      cursorColor: Colors.grey.shade800,
                      decoration: InputDecoration(
                        isDense: true,
                        filled: true,
                        fillColor: Colors.grey.shade100,
                        hintText: 'Select duration',
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.grey.shade300),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            width: 2,
                            color: Colors.green.shade800,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: onCancel,
                  child: Container(
                    margin: EdgeInsets.only(right: 5),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.grey.shade300),
                    ),
                    child: Center(
                      child: Text(
                        'Cancel',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: .bold,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(right: 5),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.green.shade800,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey.shade300),
                  ),
                  child: Center(
                    child: Text(
                      'Issue Loan',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: .bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
