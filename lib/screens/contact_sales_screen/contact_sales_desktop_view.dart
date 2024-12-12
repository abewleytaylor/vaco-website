import 'package:flutter/material.dart';
import 'package:vaco_website/theme/colors.dart';
import 'package:vaco_website/theme/text_styles.dart';

class ContactSalesDesktopView extends StatelessWidget {
  const ContactSalesDesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Row(
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
                    Text("Ready to see what content can do for you?", style: VacoTextStyles.homeScreenLine1),
                    SizedBox(height: 32.0),
                    Text(
                      "Get in touch with sales to arrange a demo, discuss pricing, or explore your use cases.\n\n"
                      "Email: sales@vaco.app\n"
                      "Phone: Coming soon",
                      style: VacoTextStyles.homeScreenLine3,
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
      ),
    );
  }
}
