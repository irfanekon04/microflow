import 'package:flutter/material.dart';

class DashboardTile extends StatelessWidget {
  final String title, subtitle;
  final Color iconBg;
  final IconData icon;
  const DashboardTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.iconBg,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 6, offset: Offset(0, 3)),
        ],
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade200),
        color: Colors.white,
      ),
      padding: EdgeInsets.all(16),
      // height: 220,
      // width: 165,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: iconBg.withValues(alpha: 0.2),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Icon(icon, color: iconBg, size: 40),
            ),
          ),
          Text(title, style: TextStyle(fontSize: 16, color: Color(0xFF86848d))),
          Text(
            subtitle,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
