import 'package:flutter/material.dart';
import 'package:poins/barging_progress/barging_progress_model.dart';
import 'package:poins/widget/colors.dart';

class BargingProgressItem extends StatelessWidget {
  final BargingProgressModel bargingProgressModel;

  const BargingProgressItem({super.key, required this.bargingProgressModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: AppColors.darkGrey,
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.all(8),
          width: 80,
          child: Text(
            bargingProgressModel.title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 9,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(height: 10),
        Stack(
          alignment: Alignment.center,
          children: [
            CircularProgressIndicator(
              value: bargingProgressModel.statusIndicator,
              backgroundColor: Colors.grey[300],
              valueColor:
                  const AlwaysStoppedAnimation<Color>(AppColors.primaryColor),
            ),
            Text(
              '${(bargingProgressModel.statusIndicator * 100).toStringAsFixed(0)}%',
              style: const TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(height: 5),
        Text(
          bargingProgressModel.customer,
          style: const TextStyle(fontSize: 9),
        ),
        Text(
          bargingProgressModel.description,
          style: const TextStyle(fontSize: 9),
        ),
        Text(
          bargingProgressModel.description,
          style: const TextStyle(fontSize: 9),
        ),
        Text(
          bargingProgressModel.description,
          style: const TextStyle(fontSize: 9),
        ),
        Text(
          bargingProgressModel.description,
          style: const TextStyle(fontSize: 8),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
            color: bargingProgressModel.statusWarna,
            borderRadius:
                BorderRadius.circular(10), // Atur radius border rounded
          ),
          padding: const EdgeInsets.all(8),
          width: 80,
          child: Text(
            bargingProgressModel.statusProgress,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 8,
              color: Colors
                  .white, // Warna teks putih agar terlihat jelas pada latar belakang yang berwarna
            ),
          ),
        ),
      ],
    );
  }
}
