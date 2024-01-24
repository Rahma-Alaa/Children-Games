
import 'package:children_games/responsive_layout.dart';
import 'package:flutter/material.dart';
import 'desktop_body.dart';
import 'mobile_body.dart';



class HomePage extends StatefulWidget {
  const HomePage(BuildContext context, {super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    return const Scaffold(
      body: ResponsiveLayout(
        mobileBody: MyMobileBody(), 
        desktopBody: MyDesktopBody()
        ),
    );
  }
}
