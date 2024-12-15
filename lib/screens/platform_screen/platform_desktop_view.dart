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
                      "With Vaco, employees follow the people and information they need to stay connected to what matters most.\n\n"
                      "Multimedia posting ensures every message hits the mark — whether it’s sharing insights, celebrating wins, or driving discussions. Whatever needs to be said, Vaco makes it resonate.",
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
                    Text("POWERFUL SEARCH", style: VacoTextStyles.vacoHeader),
                    SizedBox(height: 24.0),
                    Text(
                      "Content is only valuable when it’s easy to find. Vaco’s Intelligent Search unlocks the full potential of your information by identifying and summarizing what matters most.\n\n"
                      "No more digging through endless files — Vaco delivers the answers you need, when you need them, so you can focus on what’s next.\n\n",
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
                    Text("INSIGHTFUL DISCUSSIONS", style: VacoTextStyles.vacoHeader),
                    SizedBox(height: 24.0),
                    Text(
                      "Vaco’s unique Discussions feature reimagines group chats by centering them around a single piece of content.\n\n"
                      "By keeping discussions focused and relevant, Vaco ensures only the right people are involved, reducing distractions and enabling deep engagement.",
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
