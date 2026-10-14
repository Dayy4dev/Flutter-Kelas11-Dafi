import 'package:flutter/material.dart';

class PriceText extends StatelessWidget {
  final double price;
  final double fontSize;
  final Color color;

  const PriceText({
    super.key,
    required this.price,
    this.fontSize = 18,
    this.color = Colors.green,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Rp $price',
      style: TextStyle(
        fontSize: fontSize,
        color: color,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}