import 'package:flutter/material.dart';
import 'package:vaco_website/screens/policy_screens/privacy_policy_screen.dart';
import 'package:vaco_website/screens/policy_screens/terms_of_service_screen.dart';
import 'package:vaco_website/theme/colors.dart';
import 'package:vaco_website/theme/text_styles.dart';
import 'package:vaco_website/widgets/desktop_appbar.dart';
import 'package:vaco_website/widgets/mobile_appbar.dart';

class PricingScreen extends StatelessWidget {
  const PricingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: Scaffold(
        backgroundColor: VacoColors.vacoBackground,
        appBar: MediaQuery.of(context).size.width > 1023 ? DesktopAppbar() : MobileAppbar(),
        persistentFooterAlignment: AlignmentDirectional.centerStart,
        persistentFooterButtons: [
          TextButton(
            style: ButtonStyle(overlayColor: WidgetStateProperty.all(Colors.transparent)),
            onPressed: () => Navigator.push(
              context,
              PageRouteBuilder(pageBuilder: (context, animation1, animation2) => PrivacyPolicyScreen(), transitionDuration: Duration.zero, reverseTransitionDuration: Duration.zero),
            ),
            child: Text("Privacy Policy"),
          ),
          TextButton(
            style: ButtonStyle(overlayColor: WidgetStateProperty.all(Colors.transparent)),
            onPressed: () => Navigator.push(
              context,
              PageRouteBuilder(pageBuilder: (context, animation1, animation2) => TermsOfServiceScreen(), transitionDuration: Duration.zero, reverseTransitionDuration: Duration.zero),
            ),
            child: Text("Terms of Service"),
          ),
        ],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "£2.49 / User / Month",
                style: VacoTextStyles.homeScreenLine2,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16.0),
              Text("It's that simple", style: VacoTextStyles.homeScreenLine3),
            ],
          ),
        ),
      ),
    );
  }
}
