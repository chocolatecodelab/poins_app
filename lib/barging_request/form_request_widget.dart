import 'package:flutter/material.dart';
import 'package:poins/widget/colors.dart';
import 'package:poins/widget/confirmation_dialog.dart';
import 'package:poins/widget/dropdown_field.dart';
import 'package:poins/widget/dynamic_button.dart';

class FormRequestWidget extends StatefulWidget {
  final TabController tabController;
  const FormRequestWidget({super.key, required this.tabController});

  @override
  State<FormRequestWidget> createState() => _FormRequestWidgetState();
}

class _FormRequestWidgetState extends State<FormRequestWidget> {
  String customerSelectedValue = ''; // Nilai terpilih dari dropdown
  String tugBoatSelectedValue = ''; // Nilai terpilih dari dropdown
  String bargeSelectedValue = ''; // Nilai terpilih dari dropdown
  String tujuanSelectedValue = ''; // Nilai terpilih dari dropdown
  String dateValue = ''; // Nilai terpilih dari dropdown
  String timeValue = ''; // Nilai terpilih dari dropdown
  int selectedButtonIndex = -1; // Nilai default
  bool isCustomerSelected = false; //
  bool isTugBoatSelectedValue = false;
  bool isBargeSelectedValue = false;
  bool isTujuanSelectedValue = false;
  bool isDateValue = false;
  bool isTimeValue = false;
  bool isSubmitButton = false;

  void handleButtonTap(int index) {
    setState(() {
      if (selectedButtonIndex == index) {
        isCustomerSelected = false;
        isTugBoatSelectedValue = false;
        isBargeSelectedValue = false;
        isDateValue = false;
        isTimeValue = false;
        isSubmitButton = false;
        selectedButtonIndex =
            -1; // Tombol yang sama diklik kembali, atur kembali ke default
      } else {
        isCustomerSelected = true;
        selectedButtonIndex =
            index; // Tombol yang berbeda diklik, atur indeks yang dipilih
      }
    });
  }

  void _nextTab() {
    setState(() {
      widget.tabController.animateTo(widget.tabController.index + 1);
    });
  }

  void _previousTab() {
    setState(() {
      widget.tabController.animateTo(widget.tabController.index - 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    final formFieldKey = GlobalKey<FormState>();
    return SizedBox(
      height: 500,
      child: Form(
        key: formFieldKey,
        child: TabBarView(controller: widget.tabController, children: [
          // Tab Bar Pertama => Form
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  const Column(
                    children: [
                      Center(
                        child: Text(
                          "Choose Jetty :",
                          style: TextStyle(fontSize: 16),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        excludeFromSemantics: true,
                        onTap: () => handleButtonTap(0),
                        child: Container(
                          width: 90,
                          margin: const EdgeInsets.all(8),
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: selectedButtonIndex == 0
                                ? AppColors.primaryColor
                                : Colors.grey[400],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            "BLU J",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: selectedButtonIndex == 0
                                    ? Colors.white
                                    : Colors.black),
                          ),
                        ),
                      ),
                      GestureDetector(
                        excludeFromSemantics: true,
                        onTap: () => handleButtonTap(1),
                        child: Container(
                          width: 90,
                          margin: const EdgeInsets.all(8),
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: selectedButtonIndex == 1
                                ? AppColors.primaryColor
                                : Colors.grey[400],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            "BLU U",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: selectedButtonIndex == 1
                                    ? Colors.white
                                    : Colors.black),
                          ),
                        ),
                      ),
                      GestureDetector(
                        excludeFromSemantics: true,
                        onTap: () => handleButtonTap(2),
                        child: Container(
                          width: 90,
                          margin: const EdgeInsets.all(8),
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: selectedButtonIndex == 2
                                ? AppColors.primaryColor
                                : Colors.grey[400],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            "BLU K",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: selectedButtonIndex == 2
                                    ? Colors.white
                                    : Colors.black),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  DropdownField(
                    value: customerSelectedValue,
                    items: const ['Sayuran', 'Buah'],
                    label: 'Customer',
                    hint: "Choose Customer",
                    enabled: isCustomerSelected,
                    onChanged: (newValue) {
                      setState(() {
                        customerSelectedValue = newValue!;
                        isTugBoatSelectedValue = true;
                      });
                    },
                  ),
                  const SizedBox(height: 5),
                  const Divider(thickness: 1),
                  const SizedBox(height: 5),
                  DropdownField(
                    value: tugBoatSelectedValue,
                    items: const ['Sayuran', 'Buah'],
                    label: 'Tugboat',
                    hint: "Choose Tugboat",
                    enabled: isTugBoatSelectedValue,
                    onChanged: (newValue) {
                      setState(() {
                        tugBoatSelectedValue = newValue!;
                        isBargeSelectedValue = true;
                      });
                    },
                  ),
                  const SizedBox(height: 5),
                  const Divider(thickness: 1),
                  const SizedBox(height: 10),
                  DropdownField(
                    value: bargeSelectedValue,
                    items: const ['Sayuran', 'Buah'],
                    label: 'Barge',
                    hint: "Choose Barge",
                    enabled: isBargeSelectedValue,
                    onChanged: (newValue) {
                      setState(() {
                        bargeSelectedValue = newValue!;
                        isTujuanSelectedValue = true;
                      });
                    },
                  ),
                  const Divider(thickness: 1),
                  const SizedBox(height: 10),
                  DropdownField(
                    value: tujuanSelectedValue,
                    items: const ['Sayuran', 'Buah'],
                    label: 'Tujuan',
                    hint: "Choose Tujuan",
                    enabled: isTujuanSelectedValue,
                    onChanged: (newValue) {
                      setState(() {
                        tujuanSelectedValue = newValue!;
                        isDateValue = true;
                      });
                    },
                  ),
                  const Divider(thickness: 1),
                  const SizedBox(height: 10),
                  DynamicButtonWidget(
                      buttonSize: 150,
                      label: "Next",
                      textColor: Colors.white,
                      backgroundColor: AppColors.primaryColor,
                      iconData: Icons.arrow_circle_right_outlined,
                      onPressed: () {
                        _nextTab();
                      })
                ],
              ),
            ),
          ),

          // Tab Bar Kedua => Date
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  const Column(
                    children: [
                      Center(
                        child: Text(
                          "Choose Date :",
                          style: TextStyle(fontSize: 16),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const SizedBox(height: 10),
                  DropdownField(
                    value: dateValue,
                    items: const ['Sayuran', 'Buah'],
                    label: 'Date',
                    hint: "Choose Date",
                    enabled: isDateValue,
                    onChanged: (newValue) {
                      setState(() {
                        dateValue = newValue!;
                        isTimeValue = true;
                      });
                    },
                  ),
                  const SizedBox(height: 5),
                  const Divider(thickness: 1),
                  const SizedBox(height: 5),
                  DropdownField(
                    value: timeValue,
                    items: const ['Sayuran', 'Buah'],
                    label: 'Time',
                    hint: "Choose Time",
                    enabled: isTimeValue,
                    onChanged: (newValue) {
                      setState(() {
                        timeValue = newValue!;
                        isSubmitButton = true;
                      });
                    },
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      DynamicButtonWidget(
                          buttonSize: 150,
                          label: "Previous",
                          textColor: Colors.white,
                          backgroundColor: AppColors.darkGrey,
                          iconData: Icons.arrow_circle_left_outlined,
                          onPressed: () {
                            _previousTab();
                          }),
                      const SizedBox(
                        width: 5,
                      ),
                      DynamicButtonWidget(
                          buttonSize: 150,
                          label: "Submit",
                          textColor: Colors.white,
                          backgroundColor: AppColors.primaryColor,
                          iconData: Icons.shopping_cart_outlined,
                          onPressed: isSubmitButton
                              ? () {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return const ConfirmationDialog(
                                        message:
                                            'Apakah Anda yakin ingin melanjutkan?',
                                      );
                                    },
                                  );
                                }
                              : null),
                    ],
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
