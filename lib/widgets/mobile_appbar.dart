import 'package:flutter/material.dart';
import 'package:vaco_website/theme/colors.dart';
import 'package:vaco_website/theme/text_styles.dart';

class MobileAppbar extends StatelessWidget implements PreferredSizeWidget {
  const MobileAppbar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: VacoColors.vacoBlue,
      titleSpacing: 32.0,
      title: Text("Vaco"),
      titleTextStyle: VacoTextStyles.appBarTitle,
      centerTitle: false,
      toolbarHeight: 80.0,
      actions: [
        PopupMenuButton<String>(
          onSelected: (String value) {
            print(value);
          },
          itemBuilder: (BuildContext context) {
            return {'Platform', 'Use cases', 'Pricing'}.map((String choice) {
              return PopupMenuItem<String>(
                value: choice,
                child: Text(choice),
              );
            }).toList();
          },
        ),
        SizedBox(width: 8.0),
        OutlinedButton(
          style: OutlinedButton.styleFrom(
            side: BorderSide(width: 1.5, color: VacoColors.vacoOrange),
            backgroundColor: VacoColors.vacoBlue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: Text(
              "Get started",
              style: VacoTextStyles.appBarAction,
            ),
          ),
        ),
        SizedBox(width: 16.0),
      ],
    );
  }
}
