import 'package:flutter/material.dart';
import 'package:the_chefz/Models/ModelMinuo.dart';

class listviow extends StatelessWidget {
  const listviow({
    super.key,
    required this.mnuo,
  });
  final Mnuo mnuo;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image(width: 100, height: 100, image: NetworkImage(mnuo.imgurl)),
        Image(width: 100, height: 100, image: NetworkImage(mnuo.imgurlveiow)),
      ],
    );
  }
}
