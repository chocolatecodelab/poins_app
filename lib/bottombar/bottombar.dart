import 'dart:io';
import 'package:flutter/material.dart';
import 'package:poins/home/home_view.dart';
import 'package:poins/message/message_view.dart';
import 'package:poins/profile/profile_view.dart';
import 'package:poins/widget/colors.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _pageIndex,
        children: const [
          HomeView(),
          MessageView(),
          ProfileView(),
        ],
      ),
      bottomNavigationBar: NavBar(
        pageIndex: _pageIndex,
        onTap: (index) {
          setState(() {
            _pageIndex = index;
          });
        },
      ),
    );
  }
}

class NavBar extends StatelessWidget {
  final int pageIndex;
  final Function(int) onTap;

  const NavBar({
    Key? key,
    required this.pageIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 16,
        right: 16,
        bottom: Platform.isAndroid ? 16 : 0,
      ),
      child: BottomAppBar(
        elevation: 0.0,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: DecoratedBox(
            decoration: const BoxDecoration(color: AppColors.primaryColor),
            child: SizedBox(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  navItem(
                    Icons.home_outlined,
                    pageIndex == 0,
                    onTap: () => onTap(0),
                  ),
                  navItem(
                    Icons.message_outlined,
                    pageIndex == 1,
                    onTap: () => onTap(1),
                  ),
                  navItem(
                    Icons.person_outline,
                    pageIndex == 2,
                    onTap: () => onTap(2),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget navItem(IconData icon, bool selected, {Function()? onTap}) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Icon(
          icon,
          color: selected ? Colors.white : Colors.white.withOpacity(0.4),
        ),
      ),
    );
  }
}
