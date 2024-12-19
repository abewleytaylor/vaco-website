import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:vaco_website/screens/contact_sales_screen/contact_sales_screen.dart';
import 'package:vaco_website/screens/platform_screen/platform_screen.dart';
import 'package:vaco_website/screens/pricing_screen/pricing_screen.dart';
import 'package:vaco_website/screens/use_cases_screen/use_cases_screen.dart';
import 'package:vaco_website/theme/colors.dart';
import 'package:vaco_website/theme/text_styles.dart';

class MobileViewDrawer extends StatelessWidget {
  const MobileViewDrawer({super.key});

  //todo active index to highlight current page

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.75,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8.0),
          bottomLeft: Radius.circular(8.0),
        ),
        child: Drawer(
          backgroundColor: VacoColors.vacoBackground,
          child: Column(
            children: <Widget>[
              MobileViewDrawerHeader(),
              SizedBox(height: 12.0),
              MobileViewDrawerListItem(title: "Platform", destination: PlatformScreen()),
              MobileViewDrawerListItem(title: "Use cases", destination: UseCasesScreen()),
              MobileViewDrawerListItem(title: "Pricing", destination: PricingScreen()),
              //MobileViewDrawerListItem(title: "Investor information", destination: ContactSalesScreen()),
              SizedBox(height: 12.0),
              MobileViewDrawerGetStartedButton(),
            ],
          ),
        ),
      ),
    );
  }
}

class MobileViewDrawerGetStartedButton extends StatelessWidget {
  const MobileViewDrawerGetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: BorderSide(width: 2.5, color: VacoColors.vacoOrange),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        onPressed: () => Navigator.pushReplacement(
          context,
          PageRouteBuilder(
            pageBuilder: (context, animation1, animation2) => ContactSalesScreen(),
            transitionDuration: Duration.zero,
            reverseTransitionDuration: Duration.zero,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: Text(
                "Get started",
                style: VacoTextStyles.appBarAction,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MobileViewDrawerListItem extends StatelessWidget {
  const MobileViewDrawerListItem({super.key, required this.title, required this.destination});

  final String title;
  final Widget destination;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        splashFactory: NoSplash.splashFactory,
        highlightColor: Colors.transparent,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          title: Text(title, style: VacoTextStyles.appBarAction),
          trailing: Icon(PhosphorIcons.caretRight()),
          onTap: () => Navigator.pushReplacement(
            context,
            PageRouteBuilder(
              pageBuilder: (context, animation1, animation2) => destination,
              transitionDuration: Duration.zero,
              reverseTransitionDuration: Duration.zero,
            ),
          ),
        ),
      ),
    );
  }
}

class MobileViewDrawerHeader extends StatelessWidget {
  const MobileViewDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: VacoColors.vacoBlue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network(
              "https://storage.googleapis.com/vaco_website_assets/appbar_logo_no_hamburger.png",
              height: AppBar().preferredSize.height,
              fit: BoxFit.contain,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: IconButton(
              onPressed: () => Scaffold.of(context).closeEndDrawer(),
              icon: Icon(
                PhosphorIconsBold.x,
                color: VacoColors.vacoOrange,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
