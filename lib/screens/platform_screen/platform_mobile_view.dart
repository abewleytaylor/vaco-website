import 'package:flutter/material.dart';
import 'package:vaco_website/screens/platform_screen/platform_constants.dart';
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
                child: Image.network(PlatformConstants.screenshotURL),
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
              Text(PlatformConstants.row1Header, style: VacoTextStyles.vacoHeader),
              SizedBox(height: 24.0),
              Text(PlatformConstants.row1Body, style: VacoTextStyles.vacoBody),
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
                child: Image.network(PlatformConstants.screenshotURL),
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
              Text(PlatformConstants.row2Header, style: VacoTextStyles.vacoHeader),
              SizedBox(height: 24.0),
              Text(PlatformConstants.row2Body, style: VacoTextStyles.vacoBody),
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
                child: Image.network(PlatformConstants.screenshotURL),
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
              Text(PlatformConstants.row3Header, style: VacoTextStyles.vacoHeader),
              SizedBox(height: 24.0),
              Text(PlatformConstants.row3Body, style: VacoTextStyles.vacoBody),
            ],
          ),
        ),
        SizedBox(height: 64.0),
      ],
    );
  }
}
