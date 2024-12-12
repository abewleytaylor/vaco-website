import 'package:flutter/material.dart';
import 'package:vaco_website/theme/colors.dart';
import 'package:vaco_website/theme/text_styles.dart';

class PlatformMobileView extends StatelessWidget {
  const PlatformMobileView({super.key});

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
              Text("THE LANGUAGE OF TODAY", style: VacoTextStyles.vacoHeaderSmall),
              SizedBox(height: 32.0),
              Text(
                "Where humans exist in groups there's a need for communication that anyone can listen to, should they choose.\n\n"
                "As the newspaper replaced the town crier, and digital media replaced the newspaper, Vaco replaces the ill suited means of internal communication that businesses have relied on for years.",
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
              Text("A THOUSAND WORDS", style: VacoTextStyles.vacoHeaderSmall),
              SizedBox(height: 32.0),
              Text(
                "Typical channels like email and instant messaging make text the centerpiece of communications.\n\n"
                "This carry over from the days of printing presses limits what can be said and stops busy colleagues engaging with the content being shared.\n\n"
                "Vaco supports multimedia posting to make sure that whatever the best way is to say something, you can say it.",
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
              Text("KEEP THE CONVERSATION GOING", style: VacoTextStyles.vacoHeaderSmall),
              SizedBox(height: 32.0),
              Text(
                "Sending an email to everyone in your organisation is a great way to end a conversation.\n\n"
                "Vaco's unique discussions feature encourages collaboration and healthy conversation.",
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
