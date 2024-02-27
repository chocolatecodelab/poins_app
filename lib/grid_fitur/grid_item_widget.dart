import 'package:flutter/material.dart';
import 'package:poins/grid_fitur/grid_model.dart';
import 'package:poins/widget/colors.dart';

class GridItemWidget extends StatelessWidget {
  final GridModel item;

  const GridItemWidget({
    required this.item,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: InkWell(
        onTap: () {
          // Navigasi ke halaman tertentu saat gambar diklik
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => item.destination));
        },
        child: Column(
          children: [
            Container(
              width: 80.0,
              height: 80.0,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(10.0), // Atur radius border rounded
                border: Border.all(
                  color: AppColors.primaryColor, // Warna border
                  width: 1.0, // Lebar border
                ),
              ),
              child: ClipRRect(
                borderRadius:
                    BorderRadius.circular(10.0), // Atur radius border rounded
                child: Image.asset(
                  item.imagePath,
                  fit: BoxFit
                      .cover, // Atur tata letak gambar agar sesuai dengan kontainer
                ),
              ),
            ),
            const SizedBox(height: 5),
            Text(
              item.title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
