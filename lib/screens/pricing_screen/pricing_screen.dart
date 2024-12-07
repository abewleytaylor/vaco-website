import 'package:flutter/material.dart';
import 'package:vaco_website/theme/colors.dart';
import 'package:vaco_website/widgets/desktop_appbar.dart';
import 'package:vaco_website/widgets/mobile_appbar.dart';

class PricingScreen extends StatelessWidget {
  const PricingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: VacoColors.vacoBackground,
      appBar: MediaQuery.of(context).size.width > 1023 ? DesktopAppbar() : MobileAppbar(),
      body: Center(
        child: Text("Coming soon: Prices"),
      ),
    );
  }
}
