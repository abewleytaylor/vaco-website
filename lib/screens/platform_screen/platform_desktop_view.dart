import 'package:flutter/material.dart';
import 'package:vaco_website/theme/colors.dart';
import 'package:vaco_website/theme/text_styles.dart';

class PlatformDesktopView extends StatelessWidget {
  const PlatformDesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
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
            ),
            Padding(
              padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
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
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network("https://storage.googleapis.com/vaco_website_assets/website_mockup.png"),
                  ),
                ),
              ),
            )
          ],
        ),
        Divider(
          color: VacoColors.vacoDivider,
          indent: MediaQuery.of(context).size.width * 0.1,
          endIndent: MediaQuery.of(context).size.width * 0.1,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
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
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network("https://storage.googleapis.com/vaco_website_assets/website_mockup.png"),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
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
            ),
          ],
        ),
        Divider(
          color: VacoColors.vacoDivider,
          indent: MediaQuery.of(context).size.width * 0.1,
          endIndent: MediaQuery.of(context).size.width * 0.1,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text("KEEP THE CONVERSATION GOING", style: VacoTextStyles.vacoHeader),
                    SizedBox(height: 32.0),
                    Text(
                      "Sending an email to everyone in your organisation is a great way to end a conversation.\n\n"
                      "Vaco's unique discussions feature encourages collaboration and healthy conversation.",
                      style: VacoTextStyles.vacoBody,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
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
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network("https://storage.googleapis.com/vaco_website_assets/website_mockup.png"),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
