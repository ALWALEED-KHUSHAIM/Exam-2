import 'package:flutter/material.dart';
import 'package:the_chefz/Extinshen/ExtensionBoton.dart';
import 'package:the_chefz/Viows/HomeScrine.dart';
import 'package:the_chefz/Viows/Profailpage.dart';

class Ordarspage extends StatefulWidget {
  const Ordarspage({super.key});

  @override
  State<Ordarspage> createState() => _OrdarspageState();
}

class _OrdarspageState extends State<Ordarspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
