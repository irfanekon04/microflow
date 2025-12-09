import 'package:flutter/material.dart';
import 'package:microflow/provider/loan_provider.dart';
import 'package:microflow/provider/member_provider.dart';
import 'package:provider/provider.dart';

class AddLoansForm extends StatefulWidget {
  const AddLoansForm({super.key});

  @override
  State<AddLoansForm> createState() => _AddLoansFormState();
}

class _AddLoansFormState extends State<AddLoansForm> {
  int? memberId;

  final TextEditingController amountController = TextEditingController();

  final TextEditingController interestController = TextEditingController();

  final TextEditingController durationController = TextEditingController();

  void saveLoan(BuildContext context) {
    double? amount = double.tryParse(amountController.text.trim());
    double? interest = double.tryParse(interestController.text.trim());
    int? duration = int.tryParse(durationController.text.trim());

    context.read<LoanProvider>().issueLoan(
      memberId: memberId!,
      amount: amount!,
      interest: interest!,
      duration: duration!,
    );
    amountController.clear();
    interestController.clear();
    durationController.clear();
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    List members = context.watch<MemberProvider>().members;
    return Container(
      padding: EdgeInsets.only(bottom: 24, top: 12, right: 12, left: 12),
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
                onPressed: () => Navigator.pop(context),
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
          DropdownButtonFormField(
            decoration: InputDecoration(
              filled: true,
              isDense: true,
              fillColor: Colors.grey.shade100,
              hintText: 'Select Member...',
              enabledBorder: OutlineInputBorder(
                borderRadius: .circular(12),
                borderSide: BorderSide(color: Colors.grey.shade300),
              ),

              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(width: 2, color: Colors.green.shade800),
              ),
            ),
            items: members.map((m) {
              return DropdownMenuItem(value: m.id, child: Text(m.name));
            }).toList(),
            onChanged: (value) {
              setState(() {
                memberId = value as int;
              });
            },
          ),
          // TextField(
          //   controller: memberIdController,
          //   cursorColor: Colors.grey.shade800,
          //   decoration: InputDecoration(
          //     isDense: true,
          //     filled: true,
          //     fillColor: Colors.grey.shade100,
          //     hintText: 'Select member...',
          //     enabledBorder: OutlineInputBorder(
          //       borderRadius: .circular(12),
          //       borderSide: BorderSide(color: Colors.grey.shade300),
          //     ),

          //     focusedBorder: OutlineInputBorder(
          //       borderRadius: BorderRadius.circular(12),
          //       borderSide: BorderSide(width: 2, color: Colors.green.shade800),
          //     ),
          //   ),
          // ),
          SizedBox(height: 20),
          Text(
            'Loan Amount (৳)',
            style: TextStyle(fontSize: 16, fontWeight: .w600),
          ),
          SizedBox(height: 8),
          TextField(
            controller: amountController,
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
                      controller: interestController,
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
                      controller: durationController,
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
                child: Padding(
                  padding: const EdgeInsets.only(right: 5.0),
                  child: FilledButton(
                    style: FilledButton.styleFrom(
                      backgroundColor: Colors.grey.shade100,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () => Navigator.pop(context),
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
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: FilledButton(
                    style: FilledButton.styleFrom(
                      backgroundColor: Colors.green.shade800,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () => saveLoan(context),
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
