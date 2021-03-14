import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsiveframeworkflutter_app/pages/home/widgets/story_circle.dart';

class StoriesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final mobile = ResponsiveWrapper.of(context).isMobile;
    // print(ResponsiveWrapper.of(context));


    return Container(
      height: 110,
      margin: EdgeInsets.only(top: mobile ? 15 : 30),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 16),
        separatorBuilder: (_, __) => const SizedBox(width: 16,),
        itemCount: 16,
        itemBuilder: (_, i) => StoryCircle(),
      ),
    );
  }
}
