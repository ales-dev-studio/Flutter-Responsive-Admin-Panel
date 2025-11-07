import 'package:flutter/material.dart';

class AppSubtitle extends StatelessWidget {
  final String text;
  final TextAlign textAlign;
  final int? maxLines;
  final TextOverflow? overflow;
  final Color color;

  const AppSubtitle({
    super.key,
    required this.text,
    this.textAlign = TextAlign.start,
    this.maxLines,
    this.overflow,
    this.color = Colors.grey,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: color),
    );
  }
}
