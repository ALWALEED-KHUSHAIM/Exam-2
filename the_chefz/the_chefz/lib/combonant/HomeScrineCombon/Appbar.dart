import 'package:flutter/material.dart';

class Appbar extends StatelessWidget {
  const Appbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  color: const Color.fromARGB(255, 56, 0, 15),
                  child: const Padding(
                    padding:
                        EdgeInsets.only(bottom: 8, top: 8, left: 40, right: 40),
                    child: Text("Delivery",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    child: const Padding(
                      padding: EdgeInsets.only(
                          bottom: 8, top: 8, left: 40, right: 40),
                      child: Text(
                        "Pickup",
                        style: TextStyle(
                            color: Color.fromARGB(255, 56, 0, 15),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        const Row(
          children: [
            Icon(Icons.drive_eta_outlined, color: Colors.red),
            Text("Deliver to")
          ],
        )
      ],
    );
  }
}
