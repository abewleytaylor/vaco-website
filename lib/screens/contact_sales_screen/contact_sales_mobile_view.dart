import 'package:flutter/material.dart';
import 'package:vaco_website/theme/colors.dart';
import 'package:vaco_website/theme/text_styles.dart';

class ContactSalesMobileView extends StatelessWidget {
  const ContactSalesMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.1),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                "Ready to see what content can do for you?",
                style: VacoTextStyles.vacoHeader,
              ),
              SizedBox(height: 48.0),
              Text(
                "Get in touch with sales to arrange a demo, discuss pricing, or explore your use cases.",
                style: VacoTextStyles.vacoBody,
              ),
              SizedBox(height: 32.0),
              Text(
                "Email: sales@vaco.app\n"
                "Phone: coming soon",
                style: VacoTextStyles.vacoBody,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
