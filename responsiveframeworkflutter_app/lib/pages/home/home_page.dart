import 'package:flutter/material.dart';
import 'package:responsiveframeworkflutter_app/pages/home/widgets/post_widget.dart';
import 'package:responsiveframeworkflutter_app/pages/home/widgets/responsive_app_Bar.dart';
import 'package:responsiveframeworkflutter_app/pages/home/widgets/right_panel.dart';
import 'package:responsiveframeworkflutter_app/pages/home/widgets/stories_list.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 52 ),
          child: ResponsiveAppBar()),
      backgroundColor: Colors.black87,
      body: Align(
        alignment: Alignment.topCenter,
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 1000),
          child: Row(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    StoriesList(),
                    PostWidget(),
                    PostWidget(),
                    PostWidget(),
                  ],
                ),
              ),
              RightPanel(),
            ],
          ),
        ),
      ),
    );
  }
}
