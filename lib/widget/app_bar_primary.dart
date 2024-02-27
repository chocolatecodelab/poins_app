import 'package:flutter/material.dart';
import 'package:poins/widget/colors.dart';
import 'package:poins/widget/theme.dart';

class AppBarPrimary extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool arrowBack;

  // final Function()? onSearchPressed;
  // final Function()? onNotificationPressed;

  const AppBarPrimary({
    Key? key,
    required this.title,
    // this.onSearchPressed,
    // this.onNotificationPressed,
    required this.arrowBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: arrowBack,
      title: Container(
        margin: const EdgeInsets.only(top: 5),
        width: 80,
        height: 80,
        child: Image.asset('assets/images/logo_poins.png'),
      ),
      backgroundColor: AppColors.primaryColor,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(50.0),
        child: Container(
          margin: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
          alignment: Alignment.center,
          color: Colors.transparent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                        color: AppColors.primaryColor,
                      ),
                    ),
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 3, horizontal: 3),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Cari di Poins",
                    hintStyle: TextStyle(fontFamily: poppinsFontFamily),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(14.0),
                    ),
                    prefixIcon: IconButton(
                      icon: const Icon(Icons.search),
                      color: AppColors.darkGrey,
                      onPressed: () {},
                    ),
                  ),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.notifications),
                color: Colors.white,
                iconSize: 30,
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(120);
}
