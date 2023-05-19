import 'package:flutter/material.dart';

import '../util/color.dart';

class Button extends StatelessWidget {
  final String text;
  final double width;
  const Button({
    required this.text,
    required this.width,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: width,
      height: 58 * fem,
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(100 * fem),
      ),
      child: Center(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'SUITE',
            fontSize: 20 * ffem,
            fontWeight: FontWeight.w700,
            color: buttonTextColor,
          ),
        ),
      ),
    );
  }
}
