import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widghts/custom_botton.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});
  // final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children:const [
           Expanded(
            child: CustomBotton(
              text: '19.99',
              backgroundColor: Colors.white,
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(12)),
            ),
          ),
          Expanded(
            child: CustomBotton(
              // onPressed: () async {
              //   Uri uri = Uri.parse(bookModel.volumeInfo.previewLink!);
              //   if (await canLaunchUrl(uri)) {
              //     await launchUrl(uri);
              //   }
                
              // },
              text: 'Preview',
              fontSize: 16,
              backgroundColor: Color(0xffEF8262),
              textColor: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(12)),
            ),
          ),
        ],
      ),
    );
  }
}
