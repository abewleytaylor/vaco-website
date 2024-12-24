import 'package:flutter/material.dart';
import 'package:vaco_website/screens/contact_sales_screen/contact_sales_desktop_view.dart';
import 'package:vaco_website/screens/contact_sales_screen/contact_sales_mobile_view.dart';
import 'package:vaco_website/theme/colors.dart';
import 'package:vaco_website/widgets/desktop_appbar.dart';
import 'package:vaco_website/widgets/mobile_appbar.dart';
import 'package:vaco_website/widgets/mobile_view_drawer.dart';
import 'package:vaco_website/widgets/persistent_footer_buttons.dart';

class InvestorInformationScreen extends StatelessWidget {
  const InvestorInformationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: Scaffold(
        backgroundColor: VacoColors.vacoBackground,
        appBar: MediaQuery.of(context).size.width > 1023 ? DesktopAppbar() : MobileAppbar(),
        endDrawer: MobileViewDrawer(),
        drawerEnableOpenDragGesture: false,
        persistentFooterAlignment: AlignmentDirectional.centerStart,
        persistentFooterButtons: VacoPersistentFooterButtons.getPersistentFooterButtons(context),
        //todo make email clickable
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Vaco is actively seeking seed stage investment. If you'd like to learn more, please get in touch with the team at:\n\n"
              "investorinformation@vaco.app.",
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
