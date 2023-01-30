import 'package:flutter/material.dart';
import 'package:responsive_flutter_ui/responsive/desktop_scaffold.dart';
import 'package:responsive_flutter_ui/responsive/mobile_scaffold.dart';
import 'package:responsive_flutter_ui/responsive/responsive_layout.dart';
import 'package:responsive_flutter_ui/responsive/tablet_scaffold.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        mobileScaffold: MobileScaffold(),
        tabletScaffold: TabletScaffold(),
        desktopScaffold: DesktopScaffold());
  }
}
