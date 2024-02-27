import 'package:flutter/material.dart';
import 'package:poins/barging_request/form_request_widget.dart';
import 'package:poins/widget/app_bar_secondary.dart';
import 'package:poins/widget/app_text.dart';
import 'package:poins/widget/colors.dart';
import 'package:poins/widget/data_table.dart';
import 'package:poins/widget/dynamic_button.dart';

class BargingRequest extends StatefulWidget {
  const BargingRequest({super.key});

  @override
  State<BargingRequest> createState() => _BargingRequestState();
}

class _BargingRequestState extends State<BargingRequest>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarSecondary(
        title: "Barging Request",
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(
              kToolbarHeight + 48), // Sesuaikan dengan kebutuhan
          child: Container(
            color: Colors.white, // Warna abu-abu
            child: TabBar(
              controller: _tabController,
              isScrollable: false,
              tabs: const [
                Tab(text: 'Form'),
                Tab(text: 'Date'),
              ],
              indicatorColor: Colors.green,
              labelColor: Colors.black, // Warna teks tab yang aktif
              unselectedLabelColor:
                  Colors.grey, // Warna teks tab yang tidak aktif
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            // Foem Request
            FormRequestWidget(
              tabController: _tabController,
            ),
            const SizedBox(
              height: 50,
            ),
            // Tabel History
            DynamicButtonWidget(
                buttonSize: 200,
                iconData: Icons.event_note_outlined,
                label: "Table History",
                textColor: Colors.white,
                backgroundColor: AppColors.darkGrey,
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        height: 520,
                        child: Stack(
                          children: [
                            // Title Table History
                            const Positioned(
                              top: 30,
                              left: 0,
                              right: 0,
                              child: Center(
                                child: AppText(
                                  text: "Table History",
                                  fontWeight: FontWeight.bold,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            //Table
                            const DataTableWidget(),
                            // Tombol Close
                            Positioned(
                              top: 10,
                              right: 10,
                              child: IconButton(
                                iconSize: 30,
                                icon: const Icon(
                                  Icons.close_rounded,
                                  color: Colors.red,
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                })
          ],
        ),
      ),
    );
  }
}
