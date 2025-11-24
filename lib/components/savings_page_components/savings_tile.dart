import 'package:flutter/material.dart';

class SavingsTile extends StatelessWidget {
  final String title, value;
  final Color color;
  final IconData icon;
  const SavingsTile({
    super.key,
    required this.title,
    required this.value,
    required this.color,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color.withValues(alpha: .8)),
        color: color.withValues(alpha: 0.05),
      ),
      padding: EdgeInsets.all(16),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: color.withValues(alpha: 0.15),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Icon(icon, color: color, size: 40),
            ),
          ),
          Text(title, style: TextStyle(fontSize: 16, color: Color(0xFF86848d))),
          Text(
            value,
            style: TextStyle(fontSize: 20, fontWeight: .w900, color: color),
          ),
        ],
      ),
    );
  }
}
