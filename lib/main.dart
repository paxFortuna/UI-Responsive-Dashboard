import 'package:flutter/material.dart';
import 'package:ui_responsive_dashboard/responsive/desktop_body.dart';
import 'package:ui_responsive_dashboard/responsive/mobile_body.dart';
import 'package:ui_responsive_dashboard/responsive/responsive_layout.dart';
import 'package:ui_responsive_dashboard/responsive/tablet_body.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: ResponsiveLayout(
        mobileScaffold: MobileScaffold(),
        tabletScaffold: TabletScaffold(),
        desktopScaffold: DesktopScaffold(),
      ),
    );
  }
}
