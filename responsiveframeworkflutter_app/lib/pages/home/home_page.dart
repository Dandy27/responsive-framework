import 'package:flutter/material.dart';
import 'package:responsiveframeworkflutter_app/pages/home/widgets/responsive_app_Bar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 52 ),
          child: ResponsiveAppBar()),
    );
  }
}
