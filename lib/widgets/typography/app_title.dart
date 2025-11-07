import 'package:flutter/material.dart';

class AppTitle extends StatelessWidget {
  final String text;
  final TextAlign textAlign;
  final int? maxLines;
  final TextOverflow? overflow;
  final Color? color;

  const AppTitle({
    super.key,
    required this.text,
    this.textAlign = TextAlign.start,
    this.maxLines,
    this.overflow,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: color),
    );
  }
}
