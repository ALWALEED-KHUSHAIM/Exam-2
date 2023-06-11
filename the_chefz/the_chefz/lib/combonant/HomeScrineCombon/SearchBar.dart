import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Container(
        child: const TextField(
            decoration: InputDecoration(
          hintText: "Search for Dishes Restaurants and Res",
          border: OutlineInputBorder(),
          icon: Icon(
            Icons.search,
            color: Colors.black,
            size: 30,
          ),
        )),
      ),
    );
  }
}
