import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:the_chefz/Data/DataStore.dart';
import 'package:the_chefz/Extinshen/ExtensionBoton.dart';
import 'package:the_chefz/Viows/Ordars.dart';
import 'package:the_chefz/Viows/Profailpage.dart';

import '../combonant/HomeScrineCombon/ImageSlideshowfoto.dart';
import '../combonant/HomeScrineCombon/Store.dart';
import '../combonant/HomeScrineCombon/Str.dart';
import '../combonant/HomeScrineCombon/Appbar.dart';
import '../combonant/HomeScrineCombon/bottonicon.dart';

import '../combonant/HomeScrineCombon/listvioo.dart';

class HomeScrine extends StatelessWidget {
  const HomeScrine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ListView(
        children: [
          const Appbar(),
          const SizedBox(
            height: 20,
          ),
          const SearchBar(),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 200,
            child: ImageSlideshow(
                height: 500,
                width: 430,
                indicatorRadius: 3,
                children: [
                  for (var mcard in DataStore.data)
                    ImageSlideshowfoto(mnuo: mcard)
                ]),
          ),

          const StrText(
            str: "Try with us",
          ),
          SizedBox(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                for (var mcard in DataStore.data) listviow(mnuo: mcard)
              ],
            ),
          ),

          SizedBox(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                for (var mcard in DataStore.data) bottonicons(mnuo: mcard)
              ],
            ),
          ),
          const StrText(
            str: "Chefz Neardy You",
          ),

          // stors(mnuo: ,)
          for (var mcard in DataStore.data) stors(mnuo: mcard)
        ],
      )),
      bottomNavigationBar: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                InkWell(
                  child: const Icon(Icons.home, size: 50),
                  onTap: () {
                    context.pushPage(const HomeScrine());
                  },
                )
              ],
            ),
            Row(
              children: [
                InkWell(
                  child: const Icon(Icons.list, size: 50),
                  onTap: () {
                    context.pushPage(const Ordarspage());
                  },
                )
              ],
            ),
            Row(
              children: [
                InkWell(
                  child: const Icon(Icons.portrait_sharp, size: 50),
                  onTap: () {
                    context.pushPage(const Profail());
                  },
                )
              ],
            )
          ]),
    );
  }
}
