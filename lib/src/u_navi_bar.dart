import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:u_navi_bar/src/u_navi_bar_item.dart';
import 'package:u_navi_bar/utils/color_utils.dart';

class UNaviBar extends StatelessWidget {
  const UNaviBar({
    Key? key,
    required this.items,
    this.selectedIndex = 0,
    this.onTap,
  }) : super(key: key);
  final List<UNaviBarItem> items;
  final int selectedIndex;
  final Function(int)? onTap;
  @override
  Widget build(BuildContext context) {
    assert(items.length >= 2, "Atleast 2 UNaviBarItem needed");

    return BottomNavigationBar(
      backgroundColor: ColorUtils(context).kBarBg,
      currentIndex: selectedIndex,
      selectedItemColor: ColorUtils(context).kIconSelected,
      unselectedItemColor: ColorUtils(context).kIconUnSelected,
      elevation: 0.0,
      selectedFontSize: 13.0,
      unselectedFontSize: 13.0,
      onTap: (j) => onTap?.call(j),
      selectedLabelStyle: GoogleFonts.roboto(fontWeight: FontWeight.w500),
      unselectedLabelStyle: GoogleFonts.roboto(fontWeight: FontWeight.w500),
      items: items,
    );
  }
}
