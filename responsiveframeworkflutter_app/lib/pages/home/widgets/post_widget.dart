import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class PostWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final desktop = ResponsiveWrapper.of(context).isDesktop;

    return Padding(
      padding:  EdgeInsets.symmetric(vertical: desktop ? 35 : 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(16, 14, 14, 14),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 18,
                  backgroundImage: NetworkImage(
                      'https://instagram.fcpq4-1.fna.fbcdn.net/v/t51.2885-19/s150x150/37152075_333960357142522_5346490412364201984_n.jpg?tp=1&_nc_ht=instagram.fcpq4-1.fna.fbcdn.net&_nc_ohc=9sEenQV0sIoAX-xPj5f&oh=8eed1846b75670dbeb963f4c6d176477&oe=60767A08'),
                  backgroundColor: Colors.transparent,
                ),
                const SizedBox(width: 16),
                Expanded(
                    child: Text(
                  'Dandy27',
                  style:
                      TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
                )),
                GestureDetector(
                  child: Icon(Icons.more_horiz_sharp, color: Colors.white),
                )
              ],
            ),
          ),
          Image.network(
              'https://rihappy.vteximg.com.br/arquivos/ids/585808-768-768/Pelucia---28-Cm---Disney---Star-Wars---Baby-Yoda---Mattel-1.jpg?v=637267156507170000'),
          Padding(
            padding: const EdgeInsets.fromLTRB(
              4,
              4,
              4,
              4,
            ),
            child: Row(
              children: [
                IconButton(
                    icon: Icon(Icons.favorite_border),
                    color: Colors.white,
                    onPressed: () {}),
                const SizedBox(width: 4),
                IconButton(
                    icon: Icon(Icons.messenger_outline),
                    color: Colors.white,
                    onPressed: () {}),
                const SizedBox(width: 4),
                IconButton(
                    icon: Icon(Icons.send),
                    color: Colors.white,
                    onPressed: () {}),
                Expanded(child: Container()),
                IconButton(
                    icon: Icon(Icons.bookmark_border),
                    color: Colors.white,
                    onPressed: () {}),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16, bottom: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Curtido por Dandy27 e outras milhões de pessoas',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                const SizedBox(height: 8),
                Text(
                  'HÁ 1 HORA',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                )
              ],
            ),
          ),
          if (desktop) ...[
            Divider(color: Colors.white),
            Row(
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 20, 0, 24),
                  child: TextFormField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      isCollapsed: true,
                      hintText: 'Adicione um comentário...',
                      hintStyle: TextStyle(fontSize: 13, color: Colors.white),
                    ),
                  ),
                )),
                TextButton(
                  onPressed: (){},
      child: Text('Publicar'),)
              ],
            )
          ]
        ],
      ),
    );
  }
}
