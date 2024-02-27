import 'package:flutter/material.dart';
import 'package:poins/barging_progress/barging_progress_item.dart';
import 'package:poins/barging_progress/barging_progress_model.dart';
import 'package:poins/card_monitoring/card_monitoring_model.dart';
import 'package:poins/widget/colors.dart';

class CardMonitoringWidget extends StatelessWidget {
  final CardMonitoringModel cardMonitoringModel;

  const CardMonitoringWidget({required this.cardMonitoringModel, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 10),
      shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.circular(10), // Ubah nilai sesuai keinginan Anda
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight:
                    Radius.circular(10)), // Mengatur sudut card menjadi rounded
            child: Container(
              height: 65,
              width: 400,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/icons/header_monitoring.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: ListTile(
                title: Text(
                  cardMonitoringModel.title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                subtitle: Text(
                  cardMonitoringModel.subtitle,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.black87,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BargingProgressItem(
                      bargingProgressModel: BargingProgressModel(
                          title: "BLU J",
                          customer: "CV BRE",
                          description: "TB Borneo",
                          statusIndicator: 0.5,
                          statusWarna: AppColors.primaryColor,
                          statusProgress: "Loading")),
                  const SizedBox(
                    width: 30,
                  ),
                  BargingProgressItem(
                      bargingProgressModel: BargingProgressModel(
                          title: "BLU J",
                          customer: "CV BRE",
                          description: "TB Borneo",
                          statusIndicator: 0.5,
                          statusWarna: const Color.fromARGB(255, 250, 227, 22),
                          statusProgress: "Waiting Cargo")),
                  const SizedBox(
                    width: 30,
                  ),
                  BargingProgressItem(
                      bargingProgressModel: BargingProgressModel(
                          title: "BLU J",
                          customer: "CV BRE",
                          description: "TB Borneo",
                          statusIndicator: 0.5,
                          statusWarna: Colors.red,
                          statusProgress: "Breakdown")),
                ],
              )),
        ],
      ),
    );
  }
}
