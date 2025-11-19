import 'package:flutter/material.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.grey.shade800,
      decoration: InputDecoration(
        isDense: true,
        filled: true,
        fillColor: Colors.grey.shade100,

        hintText: 'Search members...',
        prefixIcon: Icon(Icons.search, size: 30),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(width: 2.5, color: Colors.green.shade800),
        ),
      ),
    );
  }
}
