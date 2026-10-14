import 'package:flutter/material.dart';

class RatingBadge extends StatelessWidget {
  final num rating;
  final int maxRating;
  final double iconSize;
  final double fontSize;

  const RatingBadge({
    super.key,
    required this.rating,
    this.maxRating = 5,
    this.iconSize = 20,
    this.fontSize = 16,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.star, color: Colors.amber, size: iconSize),
        const SizedBox(width: 4),
        Text(
          '$rating/$maxRating',
          style: TextStyle(fontSize: fontSize),
        ),
      ],
    );
  }
}