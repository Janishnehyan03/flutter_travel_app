import 'package:flutter/material.dart';
import '../utils/styles.dart';

class HeadingSection extends StatelessWidget {
  const HeadingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Row(
        children: [
          Container(
            decoration: BoxDecoration(
                color: text,
                borderRadius: BorderRadius.circular(100),
                image: DecorationImage(
                    image: AssetImage('assets/images/profile.png'))),
            height: 50,
            width: 50,
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome',
                style: p1,
              ),
              Text(
                'Janish Nehyan',
                style: heading3,
              )
            ],
          )
        ],
      ),
      Icon(
        Icons.notifications,
        size: 28,
      )
    ]);
  }
}
