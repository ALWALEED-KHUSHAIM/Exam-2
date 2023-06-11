import 'package:flutter/material.dart';

import '../../Models/ModelMinuo.dart';

class stors extends StatelessWidget {
  const stors({
    super.key,
    required this.mnuo,
  });
  final Mnuo mnuo;

  // final List<Mnuo> date = DataStore.data.cast<Mnuo>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(height: 150, image: NetworkImage(mnuo.imgurl)),
        Row(
          children: [
            CircleAvatar(
                backgroundColor: Colors.white,
                child: Image(image: NetworkImage(mnuo.imgurllogo))),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [Text(mnuo.nameStore)],
                ),
                const Row(
                  children: [Text("data")],
                ),
                const Row(
                  children: [
                    Text(
                      "_________________________________________________",
                      style: TextStyle(color: Colors.black26),
                    )
                  ],
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
