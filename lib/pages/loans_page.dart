import 'package:flutter/material.dart';
import 'package:microflow/components/loans_page_components/add_loans_form.dart';
import 'package:microflow/components/loans_page_components/loans_card.dart';

class LoansPage extends StatefulWidget {
  const LoansPage({super.key});

  @override
  State<LoansPage> createState() => _LoansPageState();
}

class _LoansPageState extends State<LoansPage> {
  bool showForm = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: .spaceBetween,
                crossAxisAlignment: .center,
                children: [
                  Column(
                    crossAxisAlignment: .start,
                    children: [
                      Text(
                        "Loans",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: .bold,
                        ),
                      ),
                      Text(
                        "Total Issued: ৳ 200,000",
                        style: TextStyle(
                          color: Color(0xFF929292),
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  FloatingActionButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(10),
                    ),
                    mini: true,
                    onPressed: () {
                      setState(() {
                        showForm = !showForm;
                      });
                    },
                    backgroundColor: Colors.green.shade800,
                    elevation: 0,
                    child: Icon(
                      showForm ? Icons.add : Icons.remove,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                 
                ],
              ),
              // SizedBox(height: 20),
              AnimatedContainer(
                duration: Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                child: showForm
                    ? null
                    : AddLoansForm(
                        onCancel: () {
                          setState(() {
                            showForm = true;
                          });
                        },
                      ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.blueAccent.shade100,
                      elevation: 0,
                      foregroundColor: Colors.black,
                      shadowColor: Colors.white,
                    ),
                    child: Text("All"),
                  ),
                  SizedBox(width: 10),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.blueAccent.shade100,
                      elevation: 0,
                      foregroundColor: Colors.black,
                      shadowColor: Colors.white,
                    ),
                    child: Text("Active"),
                  ),
                  SizedBox(width: 10),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.blueAccent.shade100,
                      elevation: 0,
                      foregroundColor: Colors.black,
                      shadowColor: Colors.white,
                    ),
                    child: Text("Completed"),
                  ),
                  SizedBox(width: 10),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.blueAccent.shade100,
                      elevation: 0,
                      foregroundColor: Colors.black,
                      shadowColor: Colors.white,
                    ),
                    child: Text("Overdue"),
                  ),
                  SizedBox(width: 8),
                ],
              ),
              SizedBox(height: 20),
              LoansCard(
                name: "Fatima Akter",
                issued: "Jan 10, 2025",
                balance: "50,000",
                status: "Active",
                loanAmount: "100,000",
                interest: "5",
              ),
              LoansCard(
                name: "Fatima Akter",
                issued: "Jan 10, 2025",
                balance: "50,000",
                status: "Active",
                loanAmount: "100,000",
                interest: "5",
              ),
              LoansCard(
                name: "Fatima Akter",
                issued: "Jan 10, 2025",
                balance: "50,000",
                status: "Active",
                loanAmount: "100,000",
                interest: "5",
              ),
              LoansCard(
                name: "Fatima Akter",
                issued: "Jan 10, 2025",
                balance: "0",
                status: "Completed",
                loanAmount: "100,000",
                interest: "5",
              ),
              LoansCard(
                name: "Fatima Akter",
                issued: "Jan 10, 2025",
                balance: "50,000",
                status: "Overdue",
                loanAmount: "100,000",
                interest: "5",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
