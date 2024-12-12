import 'package:flutter/material.dart';
import 'package:vaco_website/screens/contact_sales_screen/contact_sales_desktop_view.dart';
import 'package:vaco_website/screens/contact_sales_screen/contact_sales_mobile_view.dart';
import 'package:vaco_website/theme/colors.dart';
import 'package:vaco_website/widgets/desktop_appbar.dart';
import 'package:vaco_website/widgets/mobile_appbar.dart';
import 'package:vaco_website/widgets/persistent_footer_buttons.dart';

class ContactSalesScreen extends StatelessWidget {
  const ContactSalesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: Scaffold(
        backgroundColor: VacoColors.vacoBackground,
        appBar: MediaQuery.of(context).size.width > 1023 ? DesktopAppbar() : MobileAppbar(),
        persistentFooterAlignment: AlignmentDirectional.centerStart,
        persistentFooterButtons: VacoPersistentFooterButtons.getPersistentFooterButtons(context),
        body: MediaQuery.of(context).size.width > MediaQuery.of(context).size.height * 1.3 && MediaQuery.of(context).size.height > 512 ? ContactSalesDesktopView() : ContactSalesMobileView(),
      ),
    );
  }
}
