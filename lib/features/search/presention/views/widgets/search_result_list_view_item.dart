import 'package:bookly/core/utils/app_router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widghts/custom_book_rating.dart';
import '../../../../home/data/models/book_model/book_model.dart';
import 'custom_book_item.dart';

class SearchResultItem extends StatelessWidget {
  const SearchResultItem({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.KBookDatailsView , extra: bookModel);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            CustomBookItem(
                imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ??
                    AssetsData.nullImage),
            //'https://images.justwatch.com/poster/289064948/s718/house-of-the-dragon.%7Bformat%7D'

            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      bookModel.volumeInfo.title!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle20
                          .copyWith(fontFamily: kGTSectraFine),
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    bookModel.volumeInfo.authors![0],
                    style: Styles.textStyle14,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        'free',
                        style: Styles.textStyle20
                            .copyWith(fontWeight: FontWeight.w200),
                      ),
                      const Spacer(),
                      CustomBookRating(
                          rating: bookModel.volumeInfo.maturityRating!,
                          bookCount: bookModel.volumeInfo.pageCount!),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
