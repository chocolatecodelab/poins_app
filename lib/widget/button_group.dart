import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Clickable Buttons'),
        ),
        body: const ButtonGroup(),
      ),
    );
  }
}

class ButtonGroup extends StatefulWidget {
  const ButtonGroup({super.key});

  @override
  _ButtonGroupState createState() => _ButtonGroupState();
}

class _ButtonGroupState extends State<ButtonGroup> {
  int selectedButtonIndex = -1;

  void handleButtonTap(int index) {
    setState(() {
      if (selectedButtonIndex == index) {
        selectedButtonIndex =
            -1; // Tombol yang sama diklik kembali, atur kembali ke default
      } else {
        selectedButtonIndex =
            index; // Tombol yang berbeda diklik, atur indeks yang dipilih
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomButton(
          onTap: () => handleButtonTap(0),
          selected: selectedButtonIndex == 0,
        ),
        CustomButton(
          onTap: () => handleButtonTap(1),
          selected: selectedButtonIndex == 1,
        ),
        CustomButton(
          onTap: () => handleButtonTap(2),
          selected: selectedButtonIndex == 2,
        ),
      ],
    );
  }
}

class CustomButton extends StatelessWidget {
  final VoidCallback onTap;
  final bool selected;

  const CustomButton({
    required this.onTap,
    required this.selected,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(8),
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: selected
              ? Colors.grey
              : Colors.grey[200], // Ubah warna background sesuai keadaan
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          'Button',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
