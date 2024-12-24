import 'package:flutter/material.dart';
import 'package:vaco_website/screens/investor_information_screen/investor_information_screen.dart';
import 'package:vaco_website/screens/policy_screens/privacy_policy_screen.dart';
import 'package:vaco_website/screens/policy_screens/terms_of_service_screen.dart';

class VacoPersistentFooterButtons {
  static List<Widget> getPersistentFooterButtons (BuildContext context) {
    return [
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
      TextButton(
        style: ButtonStyle(overlayColor: WidgetStateProperty.all(Colors.transparent)),
        onPressed: () => Navigator.pushReplacement(
          context,
          PageRouteBuilder(
            pageBuilder: (context, animation1, animation2) => InvestorInformationScreen(),
            transitionDuration: Duration.zero,
            reverseTransitionDuration: Duration.zero,
          ),
        ),
        child: Text("Investor Information"),
      ),
    ];
  }
}

