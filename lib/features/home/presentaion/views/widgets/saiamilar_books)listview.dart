import 'package:flutter/material.dart';

import 'custom_book_item.dart';

class SaiamilarBookListView extends StatelessWidget {
  const SaiamilarBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return   Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: CustomBookImage(imageUrl: 'https://imageio.forbes.com/specials-images/imageserve/5d35eacaf1176b0008974b54/2020-Chevrolet-Corvette-Stingray/0x0.jpg?format=jpg&crop=4560,2565,x790,y784,safe&width=960',),
            );
          }),
    );
  }
}
