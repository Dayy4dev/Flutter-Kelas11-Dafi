import 'package:flutter/material.dart';

class CustomProfileItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;
  final bool isAction;

  const CustomProfileItem({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
    this.isAction = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: Colors.grey, size: 26),
          const SizedBox(width: 24),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
              const SizedBox(height: 4),
              Text(
                value,
                style: TextStyle(
                  color: isAction ? const Color(0xFF1FC55E) : Colors.grey,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
