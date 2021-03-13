import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ResponsiveMenuAction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ResponsiveVisibility(
          visible: false,
            visibleWhen: [
              Condition.smallerThan(name: TABLET),
            ],
            child: IconButton(icon: Icon(Icons.search), onPressed: () {})
        ),
        const SizedBox(width: 4),
        IconButton(icon: Icon(Icons.home), onPressed: () {}),
        const SizedBox(width: 4),
        IconButton(icon: Icon(Icons.send), onPressed: () {}),
        const SizedBox(width: 4),
        IconButton(icon: Icon(Icons.favorite_border), onPressed: () {}),
        const SizedBox(width: 16),
        CircleAvatar(
          radius: 16,
          backgroundImage: NetworkImage(
              'https://instagram.fcpq4-1.fna.fbcdn.net/v/t51.2885-19/s150x150/37152075_333960357142522_5346490412364201984_n.jpg?tp=1&_nc_ht=instagram.fcpq4-1.fna.fbcdn.net&_nc_ohc=9sEenQV0sIoAX-xPj5f&oh=8eed1846b75670dbeb963f4c6d176477&oe=60767A08'),
        )
      ],
    );
  }
}
