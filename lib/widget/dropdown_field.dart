// custom_dropdown_form_field.dart

import 'package:flutter/material.dart';
import 'package:poins/widget/colors.dart';

class DropdownField extends StatefulWidget {
  final String value;
  final List<String> items;
  final String label;
  final void Function(String?) onChanged;
  final String hint;
  final bool enabled;

  const DropdownField({
    Key? key,
    required this.value,
    required this.items,
    required this.label,
    required this.onChanged,
    required this.hint,
    required this.enabled,
  }) : super(key: key);

  @override
  State<DropdownField> createState() => _DropdownFieldState();
}

class _DropdownFieldState extends State<DropdownField> {
  String? selectedValue;

  @override
  void initState() {
    super.initState();
    selectedValue = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 400,
          child: Center(
            child: DropdownMenu<String>(
              initialSelection: selectedValue ?? '',
              width: 340,
              enableFilter: true,
              requestFocusOnTap: true,
              hintText: widget.hint,
              enabled: widget.enabled,
              label: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(widget.label),
              ),
              inputDecorationTheme: const InputDecorationTheme(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      color: AppColors
                          .primaryColor), // Atur warna garis bawah saat dalam fokus
                ),
                focusColor: AppColors.primaryColor,
                filled: true,
                contentPadding: EdgeInsets.only(left: 10),
                floatingLabelStyle: TextStyle(color: AppColors.primaryColor),
              ),
              dropdownMenuEntries: widget.items.map<DropdownMenuEntry<String>>(
                (String item) {
                  return DropdownMenuEntry<String>(value: item, label: item);
                },
              ).toList(),
              onSelected: (String? newValue) {
                setState(() {
                  selectedValue = newValue;
                });
                widget.onChanged(newValue ??
                    ""); // Panggil fungsi onChanged dengan nilai baru
              },
            ),
          ),
        ),
      ],
    );
  }
}
