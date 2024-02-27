import 'package:flutter/material.dart';
import 'package:poins/widget/colors.dart';

class SuccessConfirmationDialog extends StatefulWidget {
  final String message;
  final IconData icon;

  const SuccessConfirmationDialog(
      {super.key, required this.message, required this.icon});

  @override
  _SuccessConfirmationDialogState createState() =>
      _SuccessConfirmationDialogState();
}

class _SuccessConfirmationDialogState extends State<SuccessConfirmationDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              widget.icon,
              color: widget.icon == Icons.check_circle_outline
                  ? AppColors.primaryColor
                  : const Color.fromARGB(255, 182, 51, 42),
              size: 48,
            ),
            const SizedBox(height: 20),
            const Text(
              'Informasi',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(widget.message),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(false);
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(200, 50),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 12),
                    backgroundColor: AppColors.primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    'Ok',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
