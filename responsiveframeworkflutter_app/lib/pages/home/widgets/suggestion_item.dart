import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SuggestionItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(4, 5, 0, 5),
      child: Row(
        children: [
          CircleAvatar(
            radius: 18,
            backgroundImage: NetworkImage(
                'https://rihappy.vteximg.com.br/arquivos/ids/585808-768-768/Pelucia---28-Cm---Disney---Star-Wars---Baby-Yoda---Mattel-1.jpg?v=637267156507170000'),
            backgroundColor: Colors.transparent,
          ),
          const SizedBox(width: 16),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Dandy27',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              Text(
                'Daniel Barbosa',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ),
            ],
          )),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: (){},
              child: Text('ligar',
              style: TextStyle(
                color: Color(0xFF0396F6),
                fontWeight: FontWeight.w400,
                fontSize: 12
              ),),
            ),
          )
        ],
      ),
    );
  }
}
