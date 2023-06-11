import 'package:flutter/material.dart';
import 'package:the_chefz/Extinshen/ExtensionBoton.dart';
import 'package:the_chefz/Viows/HomeScrine.dart';
import 'package:the_chefz/Viows/Ordars.dart';

class Profail extends StatelessWidget {
  const Profail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Column(
        children: [
          Row(
            children: [],
          ),
          Row(
            children: [],
          ),
          Row(
            children: [],
          ),
          Row(
            children: [],
          ),
          Row(
            children: [],
          ),
          Row(
            children: [],
          ),
          Row(
            children: [],
          ),
          Row(
            children: [],
          ),
          Row(
            children: [],
          ),
          Row(
            children: [],
          ),
          Row(
            children: [],
          ),
        ],
      ),
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
