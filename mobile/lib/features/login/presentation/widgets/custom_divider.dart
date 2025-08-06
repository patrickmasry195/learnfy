import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
    required this.inBetweenText,
    this.inBetweenTextStyle,
    required this.leftDividerThickness,
    required this.rightDividerThickness,
    required this.dividerColor,
    required this.leftSideDividerPadding,
    required this.rightSideDividerPadding,
  });

  final String inBetweenText;
  final TextStyle? inBetweenTextStyle;
  final double leftDividerThickness;
  final double rightDividerThickness;
  final Color dividerColor;
  final double leftSideDividerPadding;
  final double rightSideDividerPadding;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            thickness: leftDividerThickness,
            color: dividerColor,
            endIndent: leftSideDividerPadding,
          ),
        ),
        Text(inBetweenText, style: inBetweenTextStyle),
        Expanded(
          child: Divider(
            thickness: rightDividerThickness,
            color: dividerColor,
            indent: rightSideDividerPadding,
          ),
        ),
      ],
    );
  }
}
