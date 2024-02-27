import 'package:flutter/material.dart';

class DynamicButtonWidget extends StatelessWidget {
  final String label;
  final Color textColor;
  final Color backgroundColor;
  final IconData? iconData;
  final VoidCallback? onPressed;
  final double buttonSize;

  const DynamicButtonWidget({
    super.key,
    required this.label,
    required this.textColor,
    required this.backgroundColor,
    this.iconData,
    required this.onPressed,
    required this.buttonSize,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: buttonSize,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          visualDensity: VisualDensity.compact,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(9),
          ),
          elevation: 4,
          backgroundColor: backgroundColor,
          textStyle: TextStyle(
            color: textColor,
            fontSize: 18,
            fontWeight: FontWeight.w300,
          ),
          padding: const EdgeInsets.symmetric(vertical: 24),
          minimumSize: const Size.fromHeight(50),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(label),
            const SizedBox(width: 15),
            Icon(
              iconData,
              size: 18,
              color: textColor,
            ),
          ],
        ),
      ),
    );
  }
}
