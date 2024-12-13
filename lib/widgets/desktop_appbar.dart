import 'package:flutter/material.dart';
import 'package:vaco_website/screens/contact_sales_screen/contact_sales_screen.dart';
import 'package:vaco_website/screens/home_screen/home_screen.dart';
import 'package:vaco_website/screens/platform_screen/platform_screen.dart';
import 'package:vaco_website/screens/pricing_screen/pricing_screen.dart';
import 'package:vaco_website/screens/use_cases_screen/use_cases_screen.dart';
import 'package:vaco_website/theme/colors.dart';
import 'package:vaco_website/theme/text_styles.dart';

class DesktopAppbar extends StatelessWidget implements PreferredSizeWidget {
  const DesktopAppbar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: VacoColors.vacoBlue,
      title: Builder(
        builder: (context) => RawMaterialButton(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent,
          child: Row(
            children: [
              Image.network(
                "https://storage.googleapis.com/vaco_website_assets/appbar_logo_no_hamburger.png",
                height: AppBar().preferredSize.height,
                fit: BoxFit.contain,
              ),
            ],
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
      titleTextStyle: VacoTextStyles.appBarTitle,
      centerTitle: false,
      toolbarHeight: 80.0,
      actions: [
        TextButton(
          style: ButtonStyle(overlayColor: WidgetStateProperty.all(Colors.transparent)),
          onPressed: () => Navigator.pushReplacement(
            context,
            PageRouteBuilder(
              pageBuilder: (context, animation1, animation2) => PlatformScreen(),
              transitionDuration: Duration.zero,
              reverseTransitionDuration: Duration.zero,
            ),
          ),
          child: Text(
            "Platform",
            style: VacoTextStyles.appBarAction,
          ),
        ),
        SizedBox(width: 8.0),
        TextButton(
          style: ButtonStyle(overlayColor: WidgetStateProperty.all(Colors.transparent)),
          onPressed: () => Navigator.pushReplacement(
            context,
            PageRouteBuilder(
              pageBuilder: (context, animation1, animation2) => UseCasesScreen(),
              transitionDuration: Duration.zero,
              reverseTransitionDuration: Duration.zero,
            ),
          ),
          child: Text(
            "Use cases",
            style: VacoTextStyles.appBarAction,
          ),
        ),
        SizedBox(width: 8.0),
        TextButton(
          style: ButtonStyle(overlayColor: WidgetStateProperty.all(Colors.transparent)),
          onPressed: () => Navigator.pushReplacement(
            context,
            PageRouteBuilder(
              pageBuilder: (context, animation1, animation2) => PricingScreen(),
              transitionDuration: Duration.zero,
              reverseTransitionDuration: Duration.zero,
            ),
          ),
          child: Text(
            "Pricing",
            style: VacoTextStyles.appBarAction,
          ),
        ),
        SizedBox(width: 16.0),
        OutlinedButton(
          style: OutlinedButton.styleFrom(
            side: BorderSide(width: 1.5, color: VacoColors.vacoOrange),
            backgroundColor: VacoColors.vacoBlue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          onPressed: () => Navigator.pushReplacement(
            context,
            PageRouteBuilder(
              pageBuilder: (context, animation1, animation2) => ContactSalesScreen(),
              transitionDuration: Duration.zero,
              reverseTransitionDuration: Duration.zero,
            ),
          ),
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
