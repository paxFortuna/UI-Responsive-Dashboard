import 'package:flutter/material.dart';
import 'package:ui_responsive_dashboard/constants.dart';

class DesktopScaffold extends StatelessWidget {
  const DesktopScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDefaultBackground,
      appBar: myAppBar,
      body: Row(
        children: [
          // open drawer
          myDrawer,

          // rest of body
        ],
      ),
    );
  }
}
