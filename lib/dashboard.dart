import 'package:flutter/material.dart';
import 'package:flutter_web/dashboard/mobile/mobile.dart';
import 'package:flutter_web/dashboard/tablet/tablet.dart';
import 'package:flutter_web/widgets/responsive.dart';

import 'dashboard/desktop/desktop.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      desktop: DesktopDashboard(),
      mobile: MobileDashboard(),
      tablet: TabletDashboard(),
    );
  }
}
