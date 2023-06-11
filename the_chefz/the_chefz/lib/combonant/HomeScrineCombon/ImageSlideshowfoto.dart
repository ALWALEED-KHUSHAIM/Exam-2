import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

import '../../Models/ModelMinuo.dart';

class ImageSlideshowfoto extends StatelessWidget {
  const ImageSlideshowfoto({
    super.key,
    required this.mnuo,
  });
  final Mnuo mnuo;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12,
      child: 
            Image(image: NetworkImage(mnuo.imgurlveiow)),
        
    );
  }
}
