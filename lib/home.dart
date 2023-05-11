import 'package:flutter/material.dart';
import 'package:flutter_web/side_menu_controller.dart';
import 'package:flutter_web/widgets/responsive.dart';
import 'package:flutter_web/widgets/side_menu.dart';
import 'package:provider/provider.dart';

import 'dashboard.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final sideMenuController = Provider.of<SideMenuController>(context);

    return Scaffold(
        key: sideMenuController.scaffoldKey,
        drawer: const SideMenu(),
        body: SafeArea(
          child: Row(
            children: [
              if (Responsive.isDesktop(context))
                const Expanded(
                  child: SideMenu(),
                ),
              const Expanded(flex: 5, child: Dashboard())
            ],
          ),
        ));
  }
}
