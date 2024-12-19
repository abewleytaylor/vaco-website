import 'package:flutter/material.dart';
import 'package:vaco_website/screens/use_cases_screen/use_cases_desktop_view.dart';
import 'package:vaco_website/screens/use_cases_screen/use_cases_mobile_view.dart';
import 'package:vaco_website/theme/colors.dart';
import 'package:vaco_website/widgets/desktop_appbar.dart';
import 'package:vaco_website/widgets/mobile_appbar.dart';
import 'package:vaco_website/widgets/mobile_view_drawer.dart';
import 'package:vaco_website/widgets/persistent_footer_buttons.dart';

class UseCasesScreen extends StatelessWidget {
  const UseCasesScreen({super.key});

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
        body: SingleChildScrollView(child: MediaQuery.of(context).size.width > MediaQuery.of(context).size.height * 1.3 && MediaQuery.of(context).size.height > 512 ? UseCasesDesktopView() : UseCasesMobileView()),
      ),
    );
  }
}
