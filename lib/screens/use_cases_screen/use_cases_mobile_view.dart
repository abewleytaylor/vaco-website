import 'package:flutter/material.dart';
import 'package:vaco_website/theme/colors.dart';
import 'package:vaco_website/theme/text_styles.dart';

class UseCasesMobileView extends StatelessWidget {
  const UseCasesMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 32.0),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.05),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              border: Border.all(
                color: VacoColors.vacoOrange,
                width: 4,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.7),
                  spreadRadius: 6,
                  blurRadius: 12,
                  offset: Offset(0, 0), // changes position of shadow
                ),
              ],
            ),
            child: SizedBox(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network("https://storage.googleapis.com/vaco_website_assets/website_mockup.png"),
              ),
            ),
          ),
        ),
        SizedBox(height: 32.0),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text("UPDATE", style: VacoTextStyles.vacoHeaderSmall),
              SizedBox(height: 32.0),
              Text(
                "Keep everyone on the same page, no matter where they are. Whether it’s a quick team sync or a company-wide announcement, Vaco makes sharing updates effortless.\n\n"
                "With the right information flowing to the right people at the right time, you’ll turn updates into action and keep your company ahead of the competition.",
                style: VacoTextStyles.vacoBody,
              ),
            ],
          ),
        ),
        SizedBox(height: 32.0),
        Divider(
          color: VacoColors.vacoDivider,
          indent: MediaQuery.of(context).size.width * 0.1,
          endIndent: MediaQuery.of(context).size.width * 0.1,
        ),
        SizedBox(height: 32.0),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.05),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              border: Border.all(
                color: VacoColors.vacoOrange,
                width: 4,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.7),
                  spreadRadius: 6,
                  blurRadius: 12,
                  offset: Offset(0, 0), // changes position of shadow
                ),
              ],
            ),
            child: SizedBox(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network("https://storage.googleapis.com/vaco_website_assets/website_mockup.png"),
              ),
            ),
          ),
        ),
        SizedBox(height: 32.0),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text("COMMUNICATE", style: VacoTextStyles.vacoHeaderSmall),
              SizedBox(height: 32.0),
              Text(
                "Turn content into conversations that matter. With the discussions feature, your teams can connect instantly over shared ideas, updates, or insights.\n\n"
                "Start a conversation with anyone—right from a post, project update, or announcement—and watch ideas grow in real time. By putting collaboration where it matters most, Vaco breaks down silos, sparks innovation, and keeps the conversation flowing.\n\n"
                "Because when your people connect, your company thrives.",
                style: VacoTextStyles.vacoBody,
              ),
            ],
          ),
        ),
        SizedBox(height: 32.0),
        Divider(
          color: VacoColors.vacoDivider,
          indent: MediaQuery.of(context).size.width * 0.1,
          endIndent: MediaQuery.of(context).size.width * 0.1,
        ),
        SizedBox(height: 32.0),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.05),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              border: Border.all(
                color: VacoColors.vacoOrange,
                width: 4,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.7),
                  spreadRadius: 6,
                  blurRadius: 12,
                  offset: Offset(0, 0), // changes position of shadow
                ),
              ],
            ),
            child: SizedBox(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network("https://storage.googleapis.com/vaco_website_assets/website_mockup.png"),
              ),
            ),
          ),
        ),
        SizedBox(height: 32.0),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text("CELEBRATE", style: VacoTextStyles.vacoHeaderSmall),
              SizedBox(height: 32.0),
              Text(
                "Every win deserves a spotlight. From small victories to major milestones, Vaco helps you celebrate the moments that matter.\n\n"
                "Recognising your team shows your appreciation, boosts team spirit, and creates a culture where people feel valued and motivated.\n\n"
                "When you make success a shared experience, you build a community that’s as proud of their work as they are of each other.",
                style: VacoTextStyles.vacoBody,
              ),
            ],
          ),
        ),
        SizedBox(height: 64.0),
      ],
    );
  }
}
