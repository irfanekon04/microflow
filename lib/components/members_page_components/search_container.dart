import 'package:flutter/material.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.grey.shade800,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey.shade100,
        // hoverColor: Colors.green.shade800,
        // focusColor: Colors.green.shade800,
        hintText: 'Search members...',
        prefixIcon: Icon(Icons.search, size: 30),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.green.shade800),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(width: 2.5, color: Colors.green.shade800),
        ),
      ),
    );
  }
}
