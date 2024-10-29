import 'package:flutter/material.dart';
import 'package:responsive_web_app/app/style/colors.dart';

class PrimaryText extends StatelessWidget {
  final String text;
  final double size;
  final FontWeight fontWeight;
  final Color color;
  final double height;

  const PrimaryText({
    super.key,
    required this.text,
    this.size = 20,
    this.fontWeight = FontWeight.w400,
    this.color = AppColors.primary,
    this.height = 1.3,
  });


  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        height: height,
        fontFamily: 'Poppins',
        fontSize: size,
        fontWeight: fontWeight,
      ),
    );
  }
}