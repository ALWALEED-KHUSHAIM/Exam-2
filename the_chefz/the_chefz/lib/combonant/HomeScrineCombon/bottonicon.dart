import 'package:flutter/material.dart';

import '../../Models/ModelMinuo.dart';

class bottonicons extends StatelessWidget {
  const bottonicons({
    super.key, required this.mnuo,
  });
  final Mnuo mnuo;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
        child:  Column(
          children: [
            Image(
                width: 100,
                height: 100,
                image: NetworkImage(
                    mnuo.imgurl)),
            Text(mnuo.nameStore)
          ],
        ),
      ),
      Container(
        child:  Column(
          children: [
            Image(
                width: 100,
                height: 100,
                image: NetworkImage(
                    mnuo.imgurlveiow)),
            Text(mnuo.nameStore)
          ],
        ),
      )
    ]);
  }
}