import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class StoryCircle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Container(
          height: 66,
          width: 66,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [
                Colors.blue,
                Colors.green
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            )
          ),
          alignment: Alignment.center,
          child: Container(
            height: 60,
            width: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black87
              ),
            alignment: Alignment.center,
            child: CircleAvatar(
              radius: 28,
              backgroundImage: NetworkImage('https://instagram.fcpq4-1.fna.fbcdn.net/v/t51.2885-19/s150x150/37152075_333960357142522_5346490412364201984_n.jpg?tp=1&_nc_ht=instagram.fcpq4-1.fna.fbcdn.net&_nc_ohc=9sEenQV0sIoAX-xPj5f&oh=8eed1846b75670dbeb963f4c6d176477&oe=60767A08'),
            ),
                  )
            ),
        Text(
          'Dandy27',
          style: TextStyle(
            fontSize: 12, color: Colors.white
          ),
        )
      ],
    );
  }
}
