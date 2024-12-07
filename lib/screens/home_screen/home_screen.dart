import 'package:flutter/material.dart';
import 'package:vaco_website/theme/colors.dart';
import 'package:vaco_website/theme/text_styles.dart';
import 'package:vaco_website/widgets/desktop_appbar.dart';
import 'package:vaco_website/widgets/mobile_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: VacoColors.vacoBackground,
      appBar: MediaQuery.of(context).size.width > 1023 ? DesktopAppbar() : MobileAppbar(),
      body: Center(
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
                      Text("BUSINESS SOCIAL", style: VacoTextStyles.homeScreenLine1),
                      SizedBox(height: 32.0),
                      Text("Connect through content", style: VacoTextStyles.homeScreenLine2),
                      SizedBox(height: 32.0),
                      Text("Break down silos, communicate goals and celebrate achievements with a team connectivity platform that puts people first.", style: VacoTextStyles.homeScreenLine3),
                      SizedBox(height: 64.0),
                      Wrap(
                        runSpacing: 16.0,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: VacoColors.vacoOrange,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            onPressed: () {},
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 16.0),
                              child: Text(
                                'See a demo',
                                style: VacoTextStyles.homeScreenButton1,
                              ),
                            ),
                          ),
                          SizedBox(width: 32.0),
                          OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(width: 1.5, color: VacoColors.vacoOrange),
                              backgroundColor: VacoColors.vacoBackground,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            onPressed: () {},
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 16.0),
                              child: Text(
                                "Contact sales",
                                style: VacoTextStyles.homeScreenButton2,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              MediaQuery.of(context).size.width > MediaQuery.of(context).size.height * 1.3 && MediaQuery.of(context).size.height > 512
                  ? Container(
                      transform: Matrix4.translationValues(125, 0, 0),
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
                        height: MediaQuery.of(context).size.height * 0.6,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network("https://storage.googleapis.com/vaco_website_assets/website_mockup.png"),
                        ),
                      ),
                    )
                  : Container()
            ],
          ),
        ),
      ),
    );
  }
}
