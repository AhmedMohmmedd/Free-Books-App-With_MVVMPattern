import 'package:flutter/material.dart';

class CustomSearchTextFiled extends StatelessWidget {
  const CustomSearchTextFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(
              12,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(
              12,
            ),
          ),
          hintText: 'Search',
          suffixIcon: IconButton(
            onPressed: () {},
            icon: const Opacity(
              opacity: .5,
              child: Icon(Icons.search),
            ),
          )),
    );
  }
}
