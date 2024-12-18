import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:vaco_website/screens/home_screen/home_screen.dart';
import 'package:vaco_website/theme/colors.dart';

class MobileAppbar extends StatelessWidget implements PreferredSizeWidget {
  const MobileAppbar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: VacoColors.vacoBlue,
      scrolledUnderElevation: 0.0,
      title: Builder(
        builder: (context) => RawMaterialButton(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent,
          child: Image.network(
            "https://storage.googleapis.com/vaco_website_assets/appbar_logo_no_hamburger.png",
            height: AppBar().preferredSize.height,
            fit: BoxFit.contain,
          ),
          onPressed: () => Navigator.pushReplacement(
            context,
            PageRouteBuilder(
              pageBuilder: (context, animation1, animation2) => HomeScreen(),
              transitionDuration: Duration.zero,
              reverseTransitionDuration: Duration.zero,
            ),
          ),
        ),
      ),
      centerTitle: false,
      toolbarHeight: 80.0,
      actions: [
        IconButton(
          onPressed: () => Scaffold.of(context).openEndDrawer(),
          icon: Icon(
            PhosphorIconsBold.list,
            color: VacoColors.vacoOrange,
          ),
        ),
        SizedBox(width: 16.0),
      ],
    );
  }
}
