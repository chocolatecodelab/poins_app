import 'package:flutter/material.dart';
import 'package:poins/widget/colors.dart';

class DataTableWidget extends StatelessWidget {
  const DataTableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.only(left: 20, right: 20),
        padding: const EdgeInsets.only(
          top: 70,
          bottom: 20,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              headingTextStyle: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
              headingRowColor: MaterialStateColor.resolveWith(
                (states) => AppColors
                    .primaryColor, // Warna latar belakang untuk baris judul
              ),
              decoration:
                  BoxDecoration(border: Border.all(color: AppColors.darkGrey)),
              columns: const <DataColumn>[
                DataColumn(
                  label: Text(
                    'Nomor',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Customer',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Tugboat',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Barge',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Tujuan',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Date',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Time',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Edit',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Status',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
              rows: List<DataRow>.generate(
                50, // Change this value to the number of rows you want
                (index) => DataRow(cells: <DataCell>[
                  DataCell(Text('Nomor $index')),
                  DataCell(Text('Customer $index')),
                  DataCell(Text('TugBoat $index')),
                  DataCell(Text('Barge $index')),
                  DataCell(Text('Tujuan $index')),
                  DataCell(Text('Date $index')),
                  DataCell(Text('Time $index')),
                  DataCell(
                    InkWell(
                      onTap: () {},
                      child: const Icon(
                        Icons.edit_note_outlined,
                        size: 36,
                        color: AppColors.darkGrey,
                      ),
                    ),
                  ),
                  DataCell(Text('Approved $index')),
                ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
