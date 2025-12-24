import 'package:flutter/material.dart';
import 'package:microflow/provider/member_provider.dart';
import 'package:provider/provider.dart';

class WithdrawForm extends StatefulWidget {
  const WithdrawForm({super.key});

  @override
  State<WithdrawForm> createState() => _WithdrawFormState();
}

class _WithdrawFormState extends State<WithdrawForm> {
  @override
  Widget build(BuildContext context) {
    final members = context.watch<MemberProvider>().members;
    // ignore: unused_local_variable
    int memberId;
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
                "Record Withdraw",
                style: TextStyle(fontSize: 18, fontWeight: .bold),
              ),

              IconButton(
                onPressed: () => Navigator.of(context).pop(context),
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
                borderSide: BorderSide(width: 2, color: Color(0xff088f60)),
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
          SizedBox(height: 20),
          Text('Amount (৳)', style: TextStyle(fontSize: 16, fontWeight: .w600)),
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
                borderSide: BorderSide(width: 2, color: Color(0xff088f60)),
              ),
            ),
          ),
          SizedBox(height: 20),

          Text(
            'Transaction Date',
            style: TextStyle(fontSize: 16, fontWeight: .w600),
          ),
          SizedBox(height: 8),
          TextField(
            cursorColor: Colors.grey.shade800,
            decoration: InputDecoration(
              isDense: true,
              filled: true,
              fillColor: Colors.grey.shade100,
              hintText: 'dd/mm/yyyy',
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Colors.grey.shade300),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(width: 2, color: Color(0xff088f60)),
              ),
            ),
          ),
          SizedBox(height: 20),
          Text('Notes', style: TextStyle(fontSize: 16, fontWeight: .w600)),
          SizedBox(height: 8),
          TextField(
            cursorColor: Colors.grey.shade800,
            decoration: InputDecoration(
              isDense: true,
              filled: true,
              fillColor: Colors.grey.shade100,
              hintText: 'Add any notes...',
              enabledBorder: OutlineInputBorder(
                borderRadius: .circular(12),
                borderSide: BorderSide(color: Colors.grey.shade300),
              ),

              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(width: 2, color: Color(0xff088f60)),
              ),
            ),
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
                    onPressed: () => Navigator.of(context).pop(context),
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
                      backgroundColor: Colors.blueAccent.shade700,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Record Withdraw',
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
