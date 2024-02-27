import 'package:flutter/material.dart';
import 'package:poins/card_monitoring/card_monitoring.dart';
import 'package:poins/card_monitoring/card_monitoring_widget.dart';
import 'package:poins/grid_fitur/grid_fitur.dart';
import 'package:poins/grid_fitur/grid_item_widget.dart';
import 'package:poins/widget/app_bar_primary.dart';
import 'package:poins/widget/colors.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarPrimary(
        arrowBack: false,
        title: "Home",
      ),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(5),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: MediaQuery.of(context).size.width /
                      1.4, // Set height dynamically
                  child: GridView.builder(
                    padding: const EdgeInsets.only(left: 5, top: 15),
                    scrollDirection: Axis.horizontal,
                    itemCount: 9,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 0.0,
                      crossAxisSpacing: 10.0,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return GridItemWidget(item: gridItems[index]);
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 10,
                      height: 10,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.primaryColor,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Container(
                      width: 10,
                      height: 10,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.green,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Container(
                      width: 10,
                      height: 10,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.green,
                      ),
                    ),
                    // Add more Containers as needed for additional sections
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemCount: cardItems.length,
                  shrinkWrap: true, // Add this line
                  itemBuilder: (context, index) {
                    return CardMonitoringWidget(
                        cardMonitoringModel: cardItems[index]);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
