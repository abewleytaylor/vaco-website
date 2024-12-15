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
              Text("ENGAGING FEEDS", style: VacoTextStyles.vacoHeader),
              SizedBox(height: 24.0),
              Text(
                //todo team portfolios e.g. engineering team has their own feed
                //todo emphasise here that admins can mandate some follows
                "Vaco allows employees to follow who they want to. Your workers know best what information they need to be effective. With Vaco they can find it. \n\n"
                "Multimedia posting means that that whatever your people need to say, they can say it right.",
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
              Text("POWERFUL SEARCH", style: VacoTextStyles.vacoHeader),
              SizedBox(height: 24.0),
              Text(
                "Content is only valuable if the people that need it can find it. Vaco's Intelligent Search functionality turns content into value again and again.\n\n"
                "Intelligent Search understands what you're looking for to find and summarise relevant content from across your organisation. Don't waste time trawling through old content for one useful comment when Vaco can do it for you.",
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
              Text("INSIGHTFUL DISCUSSIONS", style: VacoTextStyles.vacoHeader),
              SizedBox(height: 24.0),
              Text(
                "Vaco's unique Discussions feature centers conversations on content to keep them relevant and allow employees to talk about multiple things at once.\n\n"
                "Discussions can contain any group of people, driving engagement and minimising distraction.",
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
